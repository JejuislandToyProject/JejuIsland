package com.kgitbank.jeju.service.impl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.kgitbank.jeju.dto.weatherDto;


@Service
public class WeatherServiceImpl {
	
	private HashMap<String, String> dataArray() {
		HashMap<String, String> datas = new HashMap<>();
		LocalDate now = LocalDate.now();
		LocalTime now_time = LocalTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("HH00");
		
		int before = Integer.parseInt(now_time.format(formatter2));
		int after = 210;
		
		if(before < after) {
			now = now.minusDays(1);
			now_time = now_time.of(23,0);
		}
		datas.put("day", now.format(formatter));
		datas.put("time", now_time.format(formatter2));
		
		return datas;
	}
	
	public weatherDto getWeather() throws Exception {
		weatherDto weather_dto = new weatherDto();
		// 1. weather_dto 필요한 날씨 정보를 받아 리턴해줄 객체
		String sky = null, temp = null, pty = null, pop = null;
		// 2. sky, pty 하늘상태 temp온도 , pop 강수량
		String skyState = null;
		// 3. skyState에 이모티콘 값을 실어서 반영한다.
		String url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"
				+ "?serviceKey=GGNGzKyHIGayjNsUzlbzneX46MH8FeY93vryk5cjBe6%2FcMzK75D51Vc%2BjdsVcXRTrRkXeuBpkrYYG4ndqX%2FXLA%3D%3D"
				+ "&dataType=JSON" // 	요청자료형식 : JSON, XML
				+ "&numOfRows=10"   //  한 페이지 결과 수 : Default: 10
				+ "&pageNo=1"	   //  페이지 번호 : Defalut: 1
				+ "&base_date="+dataArray().get("day")// 발표일자 : 2021년10월15일 발표
				+ "&base_time=0200" //     발표시각 : 08시(정시단위)
				+ "&nx=52"	// 예보지점 x좌표값 격자 좌표값을 이용한다.
				+ "&ny=38"; //예보지점 y좌표값
		/*
		 	4. GET방식으로 api서버에 원하는 정보를 설정하여 받는다.
		 	   좌표는 격자좌표를 사용하여 격자좌표는 기상청 api를 받을때의 엑셀문서에 포함되어있다.
		 	   요청자료 형식은 json과 xml만 가능하다.
	    */
		boolean isPost = false;

		if ("post".equals("get")){
			isPost = true;
		}else {
			url = "".equals("") ? url : url + "?request=" + "";
		}

		String resultMap = getStringFromURL(url, "UTF-8", isPost, "", "application/json").toString();

		JSONObject obj = new JSONObject(resultMap);	

		JSONObject parse_response = (JSONObject) obj.get("response"); 
		// response 로 부터 body 찾기
		JSONObject parse_body = (JSONObject) parse_response.get("body"); 
		// body 로 부터 items 찾기 
		JSONObject parse_items = (JSONObject) parse_body.get("items");
		/* log.info(parse_items.toString()); */
		// items로 부터 itemlist 를 받기 
		JSONArray parse_item = parse_items.getJSONArray("item");
		String category;
		JSONObject weather; // parse_item은 배열형태이기 때문에 하나씩 데이터를 하나씩 가져올때 사용

		for(int i = 0 ; i < parse_item.length(); i++) {
			weather = (JSONObject) parse_item.get(i);
			Object fcstValue = weather.get("fcstValue");
			Object fcstDate = weather.get("fcstDate");
			Object fcstTime = weather.get("fcstTime");
			//double형으로 받고싶으면 아래내용 주석 해제
			//double fcstValue = Double.parseDouble(weather.get("fcstValue").toString());
			category = (String)weather.get("category"); 
			
			if(category.equals("SKY")) { // 하늘상태
				sky =  (String) fcstValue;
			}else if(category.equals("PTY")) { // 눈 비
				pty = (String) fcstValue;
			}else if(category.equals("TMP")) { // 현재 기온
				temp = (String) fcstValue;
			}else if(category.equals("POP")) { // 강수 확률
				pop = (String) fcstValue;
			}
		}
		
		if (!pty.equals("0")) {
			switch(pty) {
			case "1":
				skyState = "<i class=\"fas fa-cloud-showers-heavy\"></i>";
				break;
			case "3":
				skyState = "<i class=\"far fa-snowflake\"></i>";
				break;	
			case "4":
				skyState = "<i class=\"fas fa-cloud-rain\"></i>";
				break;
			}
		}else {
			switch(sky) {
			case "1":
				skyState = "<i class=\"fas fa-sun\" style=\"color:orange;\"></i>";
				break;
			case "3":
				skyState = "<i class=\"fas fa-cloud-sun\"></i>";
				break;	
			case "4":
				skyState = "<i class=\"fas fa-cloud\"></i>";
				break;
			}	
		}	
		weather_dto.setSky(skyState);
		weather_dto.setPty(pop);
		weather_dto.setTemp(temp);

		return weather_dto;	
	}
	
	public StringBuffer getStringFromURL(String url, String encoding, boolean isPost, String parameter,
			String contentType) throws Exception{
		// java.net.URLConnection 클래스
		// 외부에서 호출할 URL을 담아준다
		URL apiURL = new URL(url); 
		// 1. apiURL url을 담아준다

		HttpURLConnection conn = null; 
		BufferedReader br = null;
		BufferedWriter bw = null;

		StringBuffer result = new StringBuffer();
		try {

			conn = (HttpURLConnection) apiURL.openConnection(); // 서버와 요청된 url로 연결
			conn.setConnectTimeout(9000); // 서버연결에 지연발생
			conn.setReadTimeout(9000); //서버에는 연결 되었으나 데이터를 받는데 지연발생.
			conn.setDoOutput(true); 
			conn.setUseCaches(false);
			
			if(isPost) {
				conn.setRequestMethod("POST");
				conn.setRequestProperty("Content-Type", contentType);
				conn.setRequestProperty("Accept", "*/*");
			}else {
				conn.setRequestMethod("GET");
			}
			conn.connect();

			if(isPost) {
				bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream(), "UTF-8"));
				bw.write(parameter);
				bw.flush();
				bw = null;
			}
			br = new BufferedReader(new InputStreamReader(conn.getInputStream(), encoding));

			String line = null;

			while ((line = br.readLine()) != null) {
				result.append(line);
			}
			/* log.info(result.toString()); */

		}catch (Exception e) {
			e.printStackTrace();
			throw new Exception(url + " interface failed " + e.toString());	
		}finally {
			if(conn != null) conn.disconnect();
			if(br != null) br.close();
			if(bw != null) bw.close();
		}

		return result;
	}

}
