# _🍊JejuIsland Project🍊_
***
### Period : October 2021,  3 weeks. 
### Personnel : 6 명
### Team Member : 최웅빈 오수빈 최진호 최두식 양승모 진희
***
## 📌 _Environment_       
> UI       
> > Html,CSS,JavaScript

> Programming Language
> > Java version 11.0.1
  
> DataBase
> > Oracle DB version 18c
> > > 외부 라이브러리
> > > > ojdbc6.jar/HikariCP.jar/sql.jar/mybatis/mybatis-spring/scribejava-core/lombok/jackson-databind/jackson-dataformat-xm/gson/json/commons-fileupload/commons-io
***      
### ⚙️ _Blueprint_  
프로젝트 사전발표

https://woongbin96.tistory.com/184?category=876841

***      
### ⚙️ _Result_  
프로젝트 완성 PPT

https://github.com/JejuislandToyProject/JejuIsland/blob/dev/Project_travel_jeju_ppt.pdf

*** 
### 📌 _ER Diagram_
<img width="1387" alt="스크린샷 2021-11-03 오전 10 19 44" src="https://user-images.githubusercontent.com/77534863/139987794-d973e3b4-5d24-4596-977d-fbf96aa88ac4.png">

***   
### 📌 _Usecase Diagram_  
   
![최종팀플유스케이스](https://user-images.githubusercontent.com/77534863/139987082-0b4b7178-cb54-4b94-b3aa-8dd3a17b1945.png)

   

***
## 📌 _Core Trouble shooting_   
![image](https://user-images.githubusercontent.com/77534863/140027521-2902b2f5-86c8-4cf6-ac0d-c6cdaee566fe.png)
![image](https://user-images.githubusercontent.com/77534863/140027581-10accb49-e055-4a19-a1af-340396e8985e.png)

names 배열 (추가한 카드들의 제목들을 담고 있는 배열) 을 반복문을 돌려 RestController로 값을 보내는데
이때 컨트롤러에서 log를 찍어보면 반복문으로 보낸 순서와 다르게 값을 받음
이유는 반복문과 ajax는 처리하는 속도가 다르기 때문에 처리되는 순서대로 값을 받아옴

![image](https://user-images.githubusercontent.com/77534863/140027601-756d3ff2-abe5-4012-a44b-86de70f4bf3b.png)

그래서 배열자체를 컨트롤러로 보냄
그러면 컨트롤러에서는 파라미터로 배열을 받는데 이 때 각 배열 사이사이에 ',' 를 자동으로 추가하여 받음
컨트롤러에서는 ',' 기준으로 스플릿하여 DB에서 데이터를 가져와 다시 jsp로 보내주는 코드로 변경

```java
@GetMapping(value="/modalSearch/{title}", produces = "application/json; charset=UTF-8")
    public List<SpotAndMatzip> getModalSearch(@PathVariable("title") String title) {

        log.info(title);
        String names[] = title.split(",");
        List<SpotAndMatzip> list = new ArrayList<>();

        for(int i =0; i < names.length; ++i) {
            list.add((SpotAndMatzip) spotAndmatzipMapper.getItem(names[i]));

        }

        return list;


    }
```

## 📝  _Troubles_   
<details>
	<summary> 비동기처리 방식 오류 </summary>
	
ajax 이용 전 Controller에서 값을 꺼낸 코드
Polygon 클릭 시 모달을 띄워서 클릭한 Polygon의 행정구역 정보를 DB에서 가져와 모달 값을 수정해주어야 하는 기능이 필요했다

처음에는 POST 방식으로 Method를 정의하고 

html단에서 버튼을 hidden으로 숨겨놓고 Polygon이 클릭했을 때 같이 클릭된 것처럼 하여 submit 했었다 



jsp->(클릭한 Polygon의 행정구역명) -> Controller -> DB (데이터를 넘겨받아 행정구역 소개 정보들을 꺼내옴)

-> Controller -> jsp (DB값들 전달 받음)



순서로 진행했지만 마지막 jsp 부분에서 데이터를 받아왔을 때 모달을 띄우는 것보다 

(jsp에서 데이터를 받았을 때만 Modal을 띄운다는 조건문을 쓰기 까다로웠다 )

페이지 자체를 reloding하지 않고 모달을 미리 hidden으로 띄어놓고 ajax로 json데이터만 가져오는 방식으로 수정하였다 



바꾸는 와중에 오류가 나왔는데 

지금까지 RestController 에서의 produces=“application/json; charset=UTF-8” 부분이 

jsp로부터 받아온 값의 형태를 지정하는것인 줄 알았는데

반대로 controller 에서 jsp로 값을 보낼 때 필요한 조건이었다

produces를 추가한 결과 정상적으로 모달이 작동되는 것을 확인할 수 있었다
	
	
```java
kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {

           const xhttp = new XMLHttpRequest();
           var param = title;
          xhttp.addEventListener('readystatechange', (e) => {
             const readyState = e.target.readyState;
             const httpStatus = e.target.status;

             if(readyState == 4 && httpStatus == 200) {
                addToList(JSON.parse(e.target.responseText));
             }
          });
          xhttp.open('GET', '/jeju/test/map/'+param, true)
          xhttp.setRequestHeader('content-type', 'application/json;charset=UTF-8')

          xhttp.send();

          $('.modal, .overlay').addClass('active')

        });
```
	

</details> 
<details>
	<summary> 카카오 로그인 error </summary>
	
ScribeJava 라이브러리를 통해 access token을 발급하려 했지만 OAuth2.0 카카로 로그인 Api가 error

KOE010 오류가 계속 난다.
카카오 API 문서를 보면 잘못된 시크릿이라고 하는데 log를 확인해봐도 제대로 된 값임을 확인함.
ScribeJava 라이브러리 github에서 에러 메세지에 나온 class 들을 모두 확인해봤지만, 이유를 발견하지 못함
	
기존코드 
	
```java
public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state, String serverUrl) throws Exception {
			
			String sessionState = getSession(session);
			log.info("state: "+state+" code: "+code);
			if (StringUtils.pathEquals(sessionState, state)) {
				OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
						.apiSecret(KAKAO_CLIENT_SECRET)
						.callback(serverUrl + KAKAO_REDIRECT_URI)
						.build(NaverLoginApi.instance());
				OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
				return accessToken;
			}
			return null;
}
```

	해결 방안:
	ScribeJava 라이브러리를 사용하지 않고 직접 요청을 보내 값을 받아옴
	
	
```java
public String getAccessToken(HttpServletRequest request, String autorizeCode) throws UnsupportedEncodingException {
		    String clientId = KAKAO_CLIENT_ID;
		    String clientSecret = KAKAO_CLIENT_SECRET;
			String code = autorizeCode;
		    String state = request.getParameter("state");
		    String redirectURI = URLEncoder.encode("http://localhost:8080/jeju/kakaoAuth", "UTF-8");
		    String apiURL;
		    apiURL = "https://kauth.kakao.com/oauth/token?grant_type=authorization_code&";
		    apiURL += "client_id=" + clientId;
		    apiURL += "&client_secret=" + clientSecret;
		    apiURL += "&redirect_uri=" + redirectURI;
		    apiURL += "&code=" + code;
		    apiURL += "&state=" + state;
		    
		    log.info("apiURL="+apiURL);
		    
		    
		    String access_token = "";
		    String refresh_token = "";
		    
		    try {
		      URL url = new URL(apiURL);
		      HttpURLConnection con = (HttpURLConnection)url.openConnection();
		      con.setRequestMethod("POST");
		      //con.setDoInput(true);
		      
		      int responseCode = con.getResponseCode();
		      log.info("responseCode="+responseCode);
		      
		      
		      BufferedReader br;
		      if(responseCode==200) { // 정상 호출
		        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		      } else {  // 에러 발생
		        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		      }
		      
		      String inputLine;
		      StringBuffer res = new StringBuffer();
		      
		      while ((inputLine = br.readLine()) != null) {
		        res.append(inputLine);
		      }
		      
		      if(responseCode==200) {
				JsonElement element = JsonParser.parseString(res.toString());
				access_token = element.getAsJsonObject().get("access_token").getAsString();
				refresh_token = element.getAsJsonObject().get("refresh_token").getAsString();
		      }
		      br.close();
		      
		    } catch (Exception e) {
		    	log.error(e);
		    }
		    
		    return access_token;
}
```

카카오 에러 설명
	
![image](https://user-images.githubusercontent.com/77534863/140028521-451b0dd1-718b-43ce-bc5c-8681062c7290.png)
	
	
scribejava 라이브러리의  accessToken 발급 flow
	
![image](https://user-images.githubusercontent.com/77534863/140028528-da91bf30-5cf3-4b48-a40a-45299b0226f7.png)
	
	
</details> 


<details>
	<summary> JSON 파싱 오류 </summary>   
	
JSON 파싱과정에 대하여.
코드를 작성할때에 HashMap을 이용하여 데이터를 뽑아오는 방법을 읽고 참고하였고
참고한 블로그를 따라했을때에 json안의 데이터를 볼수는 있었으나
json안에 내가 필요한 데이터들을 추출하는 방법은 나와있지않았다.
추가적인 자료를 참고하여 데이터를 추출하려고 하였으나 HashMap으로 받는다면  json의 내용의 쌍따옴표(" ")를
제거하고 (":") 기호를 ("=")으로 변환시키는 일이 발생하여 HashMap을 이용하는 방법으로는 데이터를
추출할 방법을 찾지 못하였다.

따라서 json을 HashMap으로 변환하지 않고 JObject와 JSONArray를 이용하여
필요로 하는 데이터들을 추출하였다.

사용된 라이브러리(json)
<dependency>
    	<groupId>org.json</groupId>
    	<artifactId>json</artifactId>
    	<version>20180813</version>
</dependency>
	
```java
Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
	@GetMapping(value ="/nomal",  produces ="application/json; charset=UTF-8")
	
	public String restApiGetWeather() throws Exception{
		
		String url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"
				+ "?serviceKey=GGNGzKyHIGayjNsUzlbzneX46MH8FeY93vryk5cjBe6%2FcMzK75D51Vc%2BjdsVcXRTrRkXeuBpkrYYG4ndqX%2FXLA%3D%3D"
				+ "&dataType=JSON" // 	요청자료형식 : JSON, XML
				+ "&numOfRows=10"   //  한 페이지 결과 수 : Default: 10
				+ "&pageNo=1"	   //  페이지 번호 : Defalut: 1
				+ "&base_date="+date.format(today)+"" // 발표일자 : 2021년10월15일 발표
				+ "&base_time=0800" //     발표시각 : 08시(정시단위)
				+ "&nx=52"	// 예보지점 x좌표값 격자 좌표값을 이용한다.  
				+ "&ny=38"; //예보지점 y좌표값
		
		HashMap<String, Object> resultMap = getDataFromJson(url, "UTF-8", "GET", "");
		
		System.out.println("# RESULT : " + resultMap);
		
		JSONObject jsonObj = new JSONObject();
		
		jsonObj.put("result", resultMap);
		
		return jsonObj.toString();
	}
	
	public HashMap<String, Object> getDataFromJson(String url, String encoding,
			String type, String jsonStr) throws Exception{
		
				boolean isPost = false;
				
				if ("post".equals(type)){
					isPost = true;
				}else {
					url = "".equals(jsonStr) ? url : url + "?request=" + jsonStr;
				}
				log.info("[url : "+ url + "] [encoding : "+ encoding + "] type : "+ type +"] [jsonStr : "+ jsonStr +"]");
				return getStringFromURL(url, encoding, isPost, jsonStr, "application/json");

	}
	
	public HashMap<String, Object> getStringFromURL(String url, String encoding, boolean isPost, String parameter,
			String contentType) throws Exception{
		
		URL apiURL = new URL(url); 
		
		
		HttpURLConnection conn = null; 
		BufferedReader br = null;
		BufferedWriter bw = null;
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		try {
			conn = (HttpURLConnection) apiURL.openConnection();
			conn.setConnectTimeout(5000);
			conn.setReadTimeout(5000);
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
			
			StringBuffer result = new StringBuffer();
			
			while ((line = br.readLine()) != null)result.append(line);
			
			ObjectMapper mapper = new ObjectMapper();
			
			resultMap = mapper.readValue(result.toString(), HashMap.class);
		
		}catch (Exception e) {
			e.printStackTrace();
			throw new Exception(url + " interface failed " + e.toString());	
		}finally {
			if(conn != null) conn.disconnect();
			if(br != null) br.close();
			if(bw != null) bw.close();
		}
		
		return resultMap;
	}


// JObject와 JSONArray를 이용하여 작성한 코드
Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
	
	@GetMapping("/nomal")
	public void getGrids(Model model) throws Exception {
		String url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"
				+ "?serviceKey=GGNGzKyHIGayjNsUzlbzneX46MH8FeY93vryk5cjBe6%2FcMzK75D51Vc%2BjdsVcXRTrRkXeuBpkrYYG4ndqX%2FXLA%3D%3D"
				+ "&dataType=JSON" // 	요청자료형식 : JSON, XML
				+ "&numOfRows=10"   //  한 페이지 결과 수 : Default: 10
				+ "&pageNo=1"	   //  페이지 번호 : Defalut: 1
				+ "&base_date="+date.format(today)+"" // 발표일자 : 2021년10월15일 발표
				+ "&base_time=0800" //     발표시각 : 08시(정시단위)
				+ "&nx=52"	// 예보지점 x좌표값 격자 좌표값을 이용한다.  
				+ "&ny=38"; //예보지점 y좌표값
		
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
		log.info(parse_items.toString());
		// items로 부터 itemlist 를 받기 
				JSONArray parse_item = parse_items.getJSONArray("item");
				String category;
				JSONObject weather; // parse_item은 배열형태이기 때문에 하나씩 데이터를 하나씩 가져올때 사용
				
				String day="";
				String time="";
				for(int i = 0 ; i < parse_item.length(); i++) {
					weather = (JSONObject) parse_item.get(i);
					Object fcstValue = weather.get("fcstValue");
					Object fcstDate = weather.get("fcstDate");
					Object fcstTime = weather.get("fcstTime");
					
					category = (String)weather.get("category"); 
		
					if(!day.equals(fcstDate.toString())) {
						day=fcstDate.toString();
					}
					if(!time.equals(fcstTime.toString())) {
						time=fcstTime.toString();
						System.out.println(day+"  "+time);
					}
					System.out.print("\tcategory : "+ category);
					System.out.print(", fcst_Value : "+ fcstValue);
					System.out.print(", fcstDate : "+ fcstDate);
					System.out.println(", fcstTime : "+ fcstTime);
				}
	
		//model.addAttribute("nameList", jsonObj.toString());	
	}
	
	public StringBuffer getStringFromURL(String url, String encoding, boolean isPost, String parameter,
			String contentType) throws Exception{

		URL apiURL = new URL(url); 	
		
		HttpURLConnection conn = null;
		BufferedReader br = null;
		BufferedWriter bw = null;
		StringBuffer result = new StringBuffer();
		
		try {
			
			conn = (HttpURLConnection) apiURL.openConnection();
			conn.setConnectTimeout(5000);
			conn.setReadTimeout(5000);
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
			log.info(result.toString());
		
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
```
									
									
JSON 파싱과정중의 주의할점
HashMap을 사용하면 값을 꺼내기 정말 어렵다(나는 
 데이터를 꺼내는 것을 실패하였다.)  json은 json을 지원하는 라이브러리를 이용하자.
HashMap으로 변환했을때의 내용물
									
![image](https://user-images.githubusercontent.com/77534863/140028968-dd8c498e-714f-4e94-9c80-3b7d4393f037.png)
									
원래 json의 내용물
									
![image](https://user-images.githubusercontent.com/77534863/140028984-7ea8a7f9-617d-46f2-baba-c68fb37e175e.png)
									
									

</details> 


<details>
	<summary> Socket Timeout Exception Error</summary> 
	문제점: Controller에서 API값을 받아 View로 이동할때에 Socket Timeout Exception 오류가 난다면
	페이지를 로딩하지 못하는 문제가 생김

	해결방법: RestController와 ajax를 이용해 비동기 방식으로 문제를 해결함.

	보완해야할점: 소켓으로 데이터를 읽어오지 못할때에 날씨 데이터를 가져오지못하기 때문에
	데이터베이스를 이용하여 이 문제를 보완해야할 것으로 보인다.

	기상청 API를 이용하여 날씨정보를 가져왔지만 Socket Timeout Exception오류가 한번씩 발생한다.
	반복적으로 API URL을 호출하는 경우 특정 차례에 요청 후 응답을 받지 못한다면 무한 대기상태(교착상태)가
	시작되며 다음 순서의 API URL 호출은 시작하지 못하게된다고 한다. 
	여기서 배치 시 사용할 수 있는 스레드 풀 개수를 설정해 놓은 상태라면 모든 스레드가 사용중인 상태가되는
	경우 해당 인스턴스는 모든 작업을 진행하지 못하고 멈추게되고
	LOG상에서도 URL호출시 발생하는 무한 대기 상태에는 어떠한 Exception로그도 찾아볼수 없다고한다.
	그래서 setConnectTimeOut(), setReadTimeOut() 을 설정하여 미리 선언한 시간만큼 대기하고
	응답이 없다면 EXCEPTION을 반환하여 작업을 마치게하는것이다. 
	이때 발생하는 exception이 Socket Timeout Exception이라고한다


	#초기의 방법(Socket Timeout Exception발생을 가정한 과정)
	(@Controller + 기상청API 데이터 값) → Socket Timeout Exception → View를 만들지 못함.

	#해결 방법(Socket Timeout Exception발생을 가정한 과정)
	@Controller → View → (@RestController +  기상청API 데이터값)
	→ Socket Timeout Exception →  View는 앞서 로딩이되어있고 날씨의 정보만 들어가지 못함.
</details> 

	
<details>
	<summary> validation.BindException </summary>
	error log:
	WARN : org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver - Resolved [org.springframework.validation.BindException: 			org.springframework.validation.BeanPropertyBindingResult: 1 errors
	Field error in object 'touristSpot' on field 'image': rejected value 								[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@71968e84]; codes [typeMismatch.touristSpot.image,typeMismatch.image,typeMismatch.java.lang.String,typeMismatch]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [touristSpot.image,image]; arguments []; default message [image]]; default message [Failed to convert property value of type 'org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile' to required type 'java.lang.String' for property 'image'; nested exception is java.lang.IllegalStateException: Cannot convert value of type 'org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile' to required type 'java.lang.String' for property 'image': 		no matching editors or conversion strategy found]]


	원인:
	<input type="file" name="image" id="image">
	컨트롤러에서 image 파일을 @RequestParam("image") MultipartFile로 받아온다.
	그 후 @ModelAttribute TouristSpot touristSpot 를 하니 위와 같은 에러 로그가 나왔다.
	에러 로그를 자세히 보니 [typeMismatch.touristSpot.image,typeMismatch.image,typeMismatch.java.lang.String,typeMismatch] 가 눈에 띈다.
	TouristSpot의 String 타입 image 멤버 변수와 MultipartFile로 받아온 image가 type 에러를 일으킨 것.

	
	해결:
	input 태그의 name을 TouristSpot의 멤버 변수 이름과 다르게 바꾸어 주고, 
	image path를 string 타입으로 변환해 TouristSpot의 setImage 메서드를 사용해 추가한다.
	<input type="file" name="imageFile" id="image">
	@RequestParam("imageFile") MultipartFile
</details> 
	
	
<details>
	<summary> Multiple annotations Error</summary>
	
	error: 
	Multiple annotations found at this line:
		- cvc-complex-type.2.4.c: The matching wildcard is strict, but no declaration can be found for element 'security:http'.
		- You cannot use a spring-security-2.0.xsd or spring-security-3.0.xsd or spring-security-3.1.xsd schema or spring-security-3.2.xsd schema or 		spring-security-4.0.xsd schema with Spring 
		 Security 5.4. Please update your schema declarations to the 5.4 schema.
		- schema_reference.4: Failed to read schema document 'http://www.springframework.org/schema/security/spring-security-5.5.xsd', because 1) could 	not find the document; 2) the 
		 document could not be read; 3) the root element of the document is not <xsd:schema>.
		- Configuration problem: You cannot use a spring-security-2.0.xsd or spring-security-3.0.xsd or spring-security-3.1.xsd schema or spring-		security-3.2.xsd schema or spring-security-4.0.xsd 
		 schema with Spring Security 5.4. Please update your schema declarations to the 5.4 schema. Offending resource: file [D:/2021_Spring/Web 		project/JejuIsland/JeJu/src/main/webapp/WEB-INF/
		 spring/security-context.xml]

	solution:
	xsi:schemaLocation="http://www.springframework.org/schema/security http://www.springframework.org/schema/security/spring-security-5.5.xsd
	
	xsi:schemaLocation="http://www.springframework.org/schema/security http://www.springframework.org/schema/security/spring-security.xsd

	
	shema 버전을 삭제
	------
	error: Failed to evaluate expression 'ROLE_USER'
	solution:
	<security:intercept-url pattern="/**" access="ROLE_USER" />
	<security:intercept-url pattern="/**" access="hasRole('ROLE_USER')" />

	hasRole을 추가
	
	error: There is no PasswordEncoder mapped for the id "null"
	solution:
	스프링 버전 5이상부터는 password 앞에 식별자를 넣어야 함
	암호화를 사용하지 않는다면 {noop}을 추가
	<security:user name="guest" password="{noop}guest" authorities="hasRole('ROLE_USER')"/>

	
</details> 
	
	
<details>
	<summary> ;기호를 XXS(크로스사이트스크립팅) 유발 문자로 인식 오류 </summary>   
	오류: org.springframework.security.web.firewall.RequestRejectedException: The request was rejected because the URL contained a potentially malicious String ";"
	at org.springframework.security.web.firewall.StrictHttpFirewall.rejectedBlocklistedUrls(StrictHttpFirewall.java:456)
	at org.springframework.security.web.firewall.StrictHttpFirewall.getFirewalledRequest(StrictHttpFirewall.java:429)
	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:196)
	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:183)
	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:358)
	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:271)
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197)
	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)
	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:542)
	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135)
	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)
	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:687)
	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)
	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:357)
	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:382)
	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)
	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:893)
	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1726)
	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)
	at org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191)
	at org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659)
	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
	at java.base/java.lang.Thread.run(Thread.java:834)

	원인:  
	Spring security 버전도 업그레이드 되었고 ;기호를 XXS(크로스사이트스크립팅) 유발 문자로 인식
	같이 첨부하는 사진과 같이 경로 뒤에 세션ID 값이 붙으며 문제가됨
	세션 ID값이 붙는 이유는 톰캣서버에서 jstl <c:url/>을 사용할 때 최초호출시 세션ID를 붙이기 때문.
	새 세션이 만들어지면 클라이언트가 쿠키를 지원하는지 여부를 서버가 알 수 없으므로 쿠키와 URL에 모두 jsessionid 가 만들어진다.

	해결방안:
	web.xml에 아래와 같은 session-config 값을 추가
	<session-config>
	    <session-timeout>600</session-timeout>
 	   <tracking-mode>COOKIE</tracking-mode>
	</session-config>
</details> 

***  




## 📸 _Demonstration Video_   

관리자 페이지 영상 


https://user-images.githubusercontent.com/77534863/140022922-ea4abd8b-bc11-41ad-9e34-d50f3f15bc84.mp4


유저 로그인 영상


https://user-images.githubusercontent.com/77534863/140023092-b2b53490-74bb-489e-b198-48fd1c0abd79.mp4



마이페이지 영상


https://user-images.githubusercontent.com/77534863/140025906-3ca0d787-b4b5-4ca1-ba76-5531e88aa6e7.mp4



메인 페이지 영상


https://user-images.githubusercontent.com/77534863/140023221-a89a92f1-c6d6-40c4-b7fd-adc9c1ae7dd5.mp4



게시글 작성 영상


https://user-images.githubusercontent.com/77534863/140025742-47841b7a-1a23-45a8-909b-d1a645b75d87.mp4



게시글 검색 및 상세보기 


https://user-images.githubusercontent.com/77534863/140026032-dcabc5fe-54f9-4f95-b596-308a1c57792d.mp4


게시글 좋아요 영상


https://user-images.githubusercontent.com/77534863/140022485-3896cdac-8eae-47d1-884c-779528603486.mp4


폴리곤 영상


https://user-images.githubusercontent.com/77534863/140022679-477f4222-4c91-48bb-b9c7-e8326401797e.mp4



경로페이지 카드 검색 


https://user-images.githubusercontent.com/77534863/140026177-4239ae06-eca6-42ee-8a96-7fac78685e0d.mp4



경로페이지 카드 데이터 교환 및 여행경로 보기


https://user-images.githubusercontent.com/77534863/140026318-d381e06a-1ca7-468b-b669-4acb2b5d79e1.mp4


경로페이지 카드 삭제 및 Drag&Drop 


https://user-images.githubusercontent.com/77534863/140026490-3908649c-459e-43f8-81a2-ce6631c53a70.mp4



경로페이지 여행경로 저장 


https://user-images.githubusercontent.com/77534863/140026727-06e17148-8a5d-4c26-aa26-cd2e9e371285.mp4



경로페이지 이용방법 모달 


https://user-images.githubusercontent.com/77534863/140026922-e327ddb7-4407-4784-b79b-3267823b80ec.mp4






