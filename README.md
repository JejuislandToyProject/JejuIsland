# _๐JejuIsland Project๐_
***
### Period : October 2021,  3 weeks. 
### Personnel : 6 ๋ช
### Team Member : ์ต์๋น ์ค์๋น ์ต์งํธ ์ต๋์ ์์น๋ชจ ์งํฌ
***
## ๐ _Environment_       
> UI       
> > Html,CSS,JavaScript

> Programming Language
> > Java version 11.0.1
  
> DataBase
> > Oracle DB version 18c
> > > ์ธ๋ถ ๋ผ์ด๋ธ๋ฌ๋ฆฌ
> > > > ojdbc6.jar/HikariCP.jar/sql.jar/mybatis/mybatis-spring/scribejava-core/lombok/jackson-databind/jackson-dataformat-xm/gson/json/commons-fileupload/commons-io
***      
### โ๏ธ _Blueprint_  
ํ๋ก์ ํธ ์ฌ์ ๋ฐํ

https://woongbin96.tistory.com/184?category=876841

***      
### โ๏ธ _Result_  
ํ๋ก์ ํธ ์์ฑ PPT

https://github.com/JejuislandToyProject/JejuIsland/blob/dev/Project_travel_jeju_ppt.pdf

*** 
### ๐ _ER Diagram_
<img width="1387" alt="แแณแแณแแตแซแแฃแบ 2021-11-03 แแฉแแฅแซ 10 19 44" src="https://user-images.githubusercontent.com/77534863/139987794-d973e3b4-5d24-4596-977d-fbf96aa88ac4.png">

***   
### ๐ _Usecase Diagram_  
   
![แแฌแแฉแผแแตแทแแณแฏแแฒแแณแแฆแแตแแณ](https://user-images.githubusercontent.com/77534863/139987082-0b4b7178-cb54-4b94-b3aa-8dd3a17b1945.png)

   

***
## ๐ _Core Trouble shooting_   
![image](https://user-images.githubusercontent.com/77534863/140027521-2902b2f5-86c8-4cf6-ac0d-c6cdaee566fe.png)
![image](https://user-images.githubusercontent.com/77534863/140027581-10accb49-e055-4a19-a1af-340396e8985e.png)

names ๋ฐฐ์ด (์ถ๊ฐํ ์นด๋๋ค์ ์ ๋ชฉ๋ค์ ๋ด๊ณ  ์๋ ๋ฐฐ์ด) ์ ๋ฐ๋ณต๋ฌธ์ ๋๋ ค RestController๋ก ๊ฐ์ ๋ณด๋ด๋๋ฐ
์ด๋ ์ปจํธ๋กค๋ฌ์์ log๋ฅผ ์ฐ์ด๋ณด๋ฉด ๋ฐ๋ณต๋ฌธ์ผ๋ก ๋ณด๋ธ ์์์ ๋ค๋ฅด๊ฒ ๊ฐ์ ๋ฐ์
์ด์ ๋ ๋ฐ๋ณต๋ฌธ๊ณผ ajax๋ ์ฒ๋ฆฌํ๋ ์๋๊ฐ ๋ค๋ฅด๊ธฐ ๋๋ฌธ์ ์ฒ๋ฆฌ๋๋ ์์๋๋ก ๊ฐ์ ๋ฐ์์ด

![image](https://user-images.githubusercontent.com/77534863/140027601-756d3ff2-abe5-4012-a44b-86de70f4bf3b.png)

๊ทธ๋์ ๋ฐฐ์ด์์ฒด๋ฅผ ์ปจํธ๋กค๋ฌ๋ก ๋ณด๋
๊ทธ๋ฌ๋ฉด ์ปจํธ๋กค๋ฌ์์๋ ํ๋ผ๋ฏธํฐ๋ก ๋ฐฐ์ด์ ๋ฐ๋๋ฐ ์ด ๋ ๊ฐ ๋ฐฐ์ด ์ฌ์ด์ฌ์ด์ ',' ๋ฅผ ์๋์ผ๋ก ์ถ๊ฐํ์ฌ ๋ฐ์
์ปจํธ๋กค๋ฌ์์๋ ',' ๊ธฐ์ค์ผ๋ก ์คํ๋ฆฟํ์ฌ DB์์ ๋ฐ์ดํฐ๋ฅผ ๊ฐ์ ธ์ ๋ค์ jsp๋ก ๋ณด๋ด์ฃผ๋ ์ฝ๋๋ก ๋ณ๊ฒฝ

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

## ๐  _Troubles_   
<details>
	<summary> ๋น๋๊ธฐ์ฒ๋ฆฌ ๋ฐฉ์ ์ค๋ฅ </summary>
	
ajax ์ด์ฉ ์  Controller์์ ๊ฐ์ ๊บผ๋ธ ์ฝ๋
Polygon ํด๋ฆญ ์ ๋ชจ๋ฌ์ ๋์์ ํด๋ฆญํ Polygon์ ํ์ ๊ตฌ์ญ ์ ๋ณด๋ฅผ DB์์ ๊ฐ์ ธ์ ๋ชจ๋ฌ ๊ฐ์ ์์ ํด์ฃผ์ด์ผ ํ๋ ๊ธฐ๋ฅ์ด ํ์ํ๋ค

์ฒ์์๋ POST ๋ฐฉ์์ผ๋ก Method๋ฅผ ์ ์ํ๊ณ  

html๋จ์์ ๋ฒํผ์ hidden์ผ๋ก ์จ๊ฒจ๋๊ณ  Polygon์ด ํด๋ฆญํ์ ๋ ๊ฐ์ด ํด๋ฆญ๋ ๊ฒ์ฒ๋ผ ํ์ฌ submit ํ์๋ค 



jsp->(ํด๋ฆญํ Polygon์ ํ์ ๊ตฌ์ญ๋ช) -> Controller -> DB (๋ฐ์ดํฐ๋ฅผ ๋๊ฒจ๋ฐ์ ํ์ ๊ตฌ์ญ ์๊ฐ ์ ๋ณด๋ค์ ๊บผ๋ด์ด)

-> Controller -> jsp (DB๊ฐ๋ค ์ ๋ฌ ๋ฐ์)



์์๋ก ์งํํ์ง๋ง ๋ง์ง๋ง jsp ๋ถ๋ถ์์ ๋ฐ์ดํฐ๋ฅผ ๋ฐ์์์ ๋ ๋ชจ๋ฌ์ ๋์ฐ๋ ๊ฒ๋ณด๋ค 

(jsp์์ ๋ฐ์ดํฐ๋ฅผ ๋ฐ์์ ๋๋ง Modal์ ๋์ด๋ค๋ ์กฐ๊ฑด๋ฌธ์ ์ฐ๊ธฐ ๊น๋ค๋ก์ ๋ค )

ํ์ด์ง ์์ฒด๋ฅผ relodingํ์ง ์๊ณ  ๋ชจ๋ฌ์ ๋ฏธ๋ฆฌ hidden์ผ๋ก ๋์ด๋๊ณ  ajax๋ก json๋ฐ์ดํฐ๋ง ๊ฐ์ ธ์ค๋ ๋ฐฉ์์ผ๋ก ์์ ํ์๋ค 



๋ฐ๊พธ๋ ์์ค์ ์ค๋ฅ๊ฐ ๋์๋๋ฐ 

์ง๊ธ๊น์ง RestController ์์์ produces=โapplication/json; charset=UTF-8โ ๋ถ๋ถ์ด 

jsp๋ก๋ถํฐ ๋ฐ์์จ ๊ฐ์ ํํ๋ฅผ ์ง์ ํ๋๊ฒ์ธ ์ค ์์๋๋ฐ

๋ฐ๋๋ก controller ์์ jsp๋ก ๊ฐ์ ๋ณด๋ผ ๋ ํ์ํ ์กฐ๊ฑด์ด์๋ค

produces๋ฅผ ์ถ๊ฐํ ๊ฒฐ๊ณผ ์ ์์ ์ผ๋ก ๋ชจ๋ฌ์ด ์๋๋๋ ๊ฒ์ ํ์ธํ  ์ ์์๋ค
	
	
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
	<summary> ์นด์นด์ค ๋ก๊ทธ์ธ error </summary>
	
ScribeJava ๋ผ์ด๋ธ๋ฌ๋ฆฌ๋ฅผ ํตํด access token์ ๋ฐ๊ธํ๋ ค ํ์ง๋ง OAuth2.0 ์นด์นด๋ก ๋ก๊ทธ์ธ Api๊ฐ error

KOE010 ์ค๋ฅ๊ฐ ๊ณ์ ๋๋ค.
์นด์นด์ค API ๋ฌธ์๋ฅผ ๋ณด๋ฉด ์๋ชป๋ ์ํฌ๋ฆฟ์ด๋ผ๊ณ  ํ๋๋ฐ log๋ฅผ ํ์ธํด๋ด๋ ์ ๋๋ก ๋ ๊ฐ์์ ํ์ธํจ.
ScribeJava ๋ผ์ด๋ธ๋ฌ๋ฆฌ github์์ ์๋ฌ ๋ฉ์ธ์ง์ ๋์จ class ๋ค์ ๋ชจ๋ ํ์ธํด๋ดค์ง๋ง, ์ด์ ๋ฅผ ๋ฐ๊ฒฌํ์ง ๋ชปํจ
	
๊ธฐ์กด์ฝ๋ 
	
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

	ํด๊ฒฐ ๋ฐฉ์:
	ScribeJava ๋ผ์ด๋ธ๋ฌ๋ฆฌ๋ฅผ ์ฌ์ฉํ์ง ์๊ณ  ์ง์  ์์ฒญ์ ๋ณด๋ด ๊ฐ์ ๋ฐ์์ด
	
	
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
		      if(responseCode==200) { // ์ ์ ํธ์ถ
		        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		      } else {  // ์๋ฌ ๋ฐ์
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

์นด์นด์ค ์๋ฌ ์ค๋ช
	
![image](https://user-images.githubusercontent.com/77534863/140028521-451b0dd1-718b-43ce-bc5c-8681062c7290.png)
	
	
scribejava ๋ผ์ด๋ธ๋ฌ๋ฆฌ์  accessToken ๋ฐ๊ธ flow
	
![image](https://user-images.githubusercontent.com/77534863/140028528-da91bf30-5cf3-4b48-a40a-45299b0226f7.png)
	
	
</details> 


<details>
	<summary> JSON ํ์ฑ ์ค๋ฅ </summary>   
	
JSON ํ์ฑ๊ณผ์ ์ ๋ํ์ฌ.
์ฝ๋๋ฅผ ์์ฑํ ๋์ HashMap์ ์ด์ฉํ์ฌ ๋ฐ์ดํฐ๋ฅผ ๋ฝ์์ค๋ ๋ฐฉ๋ฒ์ ์ฝ๊ณ  ์ฐธ๊ณ ํ์๊ณ 
์ฐธ๊ณ ํ ๋ธ๋ก๊ทธ๋ฅผ ๋ฐ๋ผํ์๋์ json์์ ๋ฐ์ดํฐ๋ฅผ ๋ณผ์๋ ์์์ผ๋
json์์ ๋ด๊ฐ ํ์ํ ๋ฐ์ดํฐ๋ค์ ์ถ์ถํ๋ ๋ฐฉ๋ฒ์ ๋์์์ง์์๋ค.
์ถ๊ฐ์ ์ธ ์๋ฃ๋ฅผ ์ฐธ๊ณ ํ์ฌ ๋ฐ์ดํฐ๋ฅผ ์ถ์ถํ๋ ค๊ณ  ํ์์ผ๋ HashMap์ผ๋ก ๋ฐ๋๋ค๋ฉด  json์ ๋ด์ฉ์ ์๋ฐ์ดํ(" ")๋ฅผ
์ ๊ฑฐํ๊ณ  (":") ๊ธฐํธ๋ฅผ ("=")์ผ๋ก ๋ณํ์ํค๋ ์ผ์ด ๋ฐ์ํ์ฌ HashMap์ ์ด์ฉํ๋ ๋ฐฉ๋ฒ์ผ๋ก๋ ๋ฐ์ดํฐ๋ฅผ
์ถ์ถํ  ๋ฐฉ๋ฒ์ ์ฐพ์ง ๋ชปํ์๋ค.

๋ฐ๋ผ์ json์ HashMap์ผ๋ก ๋ณํํ์ง ์๊ณ  JObject์ JSONArray๋ฅผ ์ด์ฉํ์ฌ
ํ์๋ก ํ๋ ๋ฐ์ดํฐ๋ค์ ์ถ์ถํ์๋ค.

์ฌ์ฉ๋ ๋ผ์ด๋ธ๋ฌ๋ฆฌ(json)
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
				+ "&dataType=JSON" // 	์์ฒญ์๋ฃํ์ : JSON, XML
				+ "&numOfRows=10"   //  ํ ํ์ด์ง ๊ฒฐ๊ณผ ์ : Default: 10
				+ "&pageNo=1"	   //  ํ์ด์ง ๋ฒํธ : Defalut: 1
				+ "&base_date="+date.format(today)+"" // ๋ฐํ์ผ์ : 2021๋10์15์ผ ๋ฐํ
				+ "&base_time=0800" //     ๋ฐํ์๊ฐ : 08์(์ ์๋จ์)
				+ "&nx=52"	// ์๋ณด์ง์  x์ขํ๊ฐ ๊ฒฉ์ ์ขํ๊ฐ์ ์ด์ฉํ๋ค.  
				+ "&ny=38"; //์๋ณด์ง์  y์ขํ๊ฐ
		
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


// JObject์ JSONArray๋ฅผ ์ด์ฉํ์ฌ ์์ฑํ ์ฝ๋
Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
	
	@GetMapping("/nomal")
	public void getGrids(Model model) throws Exception {
		String url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"
				+ "?serviceKey=GGNGzKyHIGayjNsUzlbzneX46MH8FeY93vryk5cjBe6%2FcMzK75D51Vc%2BjdsVcXRTrRkXeuBpkrYYG4ndqX%2FXLA%3D%3D"
				+ "&dataType=JSON" // 	์์ฒญ์๋ฃํ์ : JSON, XML
				+ "&numOfRows=10"   //  ํ ํ์ด์ง ๊ฒฐ๊ณผ ์ : Default: 10
				+ "&pageNo=1"	   //  ํ์ด์ง ๋ฒํธ : Defalut: 1
				+ "&base_date="+date.format(today)+"" // ๋ฐํ์ผ์ : 2021๋10์15์ผ ๋ฐํ
				+ "&base_time=0800" //     ๋ฐํ์๊ฐ : 08์(์ ์๋จ์)
				+ "&nx=52"	// ์๋ณด์ง์  x์ขํ๊ฐ ๊ฒฉ์ ์ขํ๊ฐ์ ์ด์ฉํ๋ค.  
				+ "&ny=38"; //์๋ณด์ง์  y์ขํ๊ฐ
		
		boolean isPost = false;
		
		if ("post".equals("get")){
			isPost = true;
		}else {
			url = "".equals("") ? url : url + "?request=" + "";
		}
		
		String resultMap = getStringFromURL(url, "UTF-8", isPost, "", "application/json").toString();
				
		JSONObject obj = new JSONObject(resultMap);
			
		JSONObject parse_response = (JSONObject) obj.get("response"); 
		// response ๋ก ๋ถํฐ body ์ฐพ๊ธฐ
		JSONObject parse_body = (JSONObject) parse_response.get("body"); 
		// body ๋ก ๋ถํฐ items ์ฐพ๊ธฐ 
		JSONObject parse_items = (JSONObject) parse_body.get("items");
		log.info(parse_items.toString());
		// items๋ก ๋ถํฐ itemlist ๋ฅผ ๋ฐ๊ธฐ 
				JSONArray parse_item = parse_items.getJSONArray("item");
				String category;
				JSONObject weather; // parse_item์ ๋ฐฐ์ดํํ์ด๊ธฐ ๋๋ฌธ์ ํ๋์ฉ ๋ฐ์ดํฐ๋ฅผ ํ๋์ฉ ๊ฐ์ ธ์ฌ๋ ์ฌ์ฉ
				
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
									
									
JSON ํ์ฑ๊ณผ์ ์ค์ ์ฃผ์ํ ์ 
HashMap์ ์ฌ์ฉํ๋ฉด ๊ฐ์ ๊บผ๋ด๊ธฐ ์ ๋ง ์ด๋ ต๋ค(๋๋ 
 ๋ฐ์ดํฐ๋ฅผ ๊บผ๋ด๋ ๊ฒ์ ์คํจํ์๋ค.)  json์ json์ ์ง์ํ๋ ๋ผ์ด๋ธ๋ฌ๋ฆฌ๋ฅผ ์ด์ฉํ์.
HashMap์ผ๋ก ๋ณํํ์๋์ ๋ด์ฉ๋ฌผ
									
![image](https://user-images.githubusercontent.com/77534863/140028968-dd8c498e-714f-4e94-9c80-3b7d4393f037.png)
									
์๋ json์ ๋ด์ฉ๋ฌผ
									
![image](https://user-images.githubusercontent.com/77534863/140028984-7ea8a7f9-617d-46f2-baba-c68fb37e175e.png)
									
									

</details> 


<details>
	<summary> Socket Timeout Exception Error</summary> 
	๋ฌธ์ ์ : Controller์์ API๊ฐ์ ๋ฐ์ View๋ก ์ด๋ํ ๋์ Socket Timeout Exception ์ค๋ฅ๊ฐ ๋๋ค๋ฉด
	ํ์ด์ง๋ฅผ ๋ก๋ฉํ์ง ๋ชปํ๋ ๋ฌธ์ ๊ฐ ์๊น

	ํด๊ฒฐ๋ฐฉ๋ฒ: RestController์ ajax๋ฅผ ์ด์ฉํด ๋น๋๊ธฐ ๋ฐฉ์์ผ๋ก ๋ฌธ์ ๋ฅผ ํด๊ฒฐํจ.

	๋ณด์ํด์ผํ ์ : ์์ผ์ผ๋ก ๋ฐ์ดํฐ๋ฅผ ์ฝ์ด์ค์ง ๋ชปํ ๋์ ๋ ์จ ๋ฐ์ดํฐ๋ฅผ ๊ฐ์ ธ์ค์ง๋ชปํ๊ธฐ ๋๋ฌธ์
	๋ฐ์ดํฐ๋ฒ ์ด์ค๋ฅผ ์ด์ฉํ์ฌ ์ด ๋ฌธ์ ๋ฅผ ๋ณด์ํด์ผํ  ๊ฒ์ผ๋ก ๋ณด์ธ๋ค.

	๊ธฐ์์ฒญ API๋ฅผ ์ด์ฉํ์ฌ ๋ ์จ์ ๋ณด๋ฅผ ๊ฐ์ ธ์์ง๋ง Socket Timeout Exception์ค๋ฅ๊ฐ ํ๋ฒ์ฉ ๋ฐ์ํ๋ค.
	๋ฐ๋ณต์ ์ผ๋ก API URL์ ํธ์ถํ๋ ๊ฒฝ์ฐ ํน์  ์ฐจ๋ก์ ์์ฒญ ํ ์๋ต์ ๋ฐ์ง ๋ชปํ๋ค๋ฉด ๋ฌดํ ๋๊ธฐ์ํ(๊ต์ฐฉ์ํ)๊ฐ
	์์๋๋ฉฐ ๋ค์ ์์์ API URL ํธ์ถ์ ์์ํ์ง ๋ชปํ๊ฒ๋๋ค๊ณ  ํ๋ค. 
	์ฌ๊ธฐ์ ๋ฐฐ์น ์ ์ฌ์ฉํ  ์ ์๋ ์ค๋ ๋ ํ ๊ฐ์๋ฅผ ์ค์ ํด ๋์ ์ํ๋ผ๋ฉด ๋ชจ๋  ์ค๋ ๋๊ฐ ์ฌ์ฉ์ค์ธ ์ํ๊ฐ๋๋
	๊ฒฝ์ฐ ํด๋น ์ธ์คํด์ค๋ ๋ชจ๋  ์์์ ์งํํ์ง ๋ชปํ๊ณ  ๋ฉ์ถ๊ฒ๋๊ณ 
	LOG์์์๋ URLํธ์ถ์ ๋ฐ์ํ๋ ๋ฌดํ ๋๊ธฐ ์ํ์๋ ์ด๋ ํ Exception๋ก๊ทธ๋ ์ฐพ์๋ณผ์ ์๋ค๊ณ ํ๋ค.
	๊ทธ๋์ setConnectTimeOut(), setReadTimeOut() ์ ์ค์ ํ์ฌ ๋ฏธ๋ฆฌ ์ ์ธํ ์๊ฐ๋งํผ ๋๊ธฐํ๊ณ 
	์๋ต์ด ์๋ค๋ฉด EXCEPTION์ ๋ฐํํ์ฌ ์์์ ๋ง์น๊ฒํ๋๊ฒ์ด๋ค. 
	์ด๋ ๋ฐ์ํ๋ exception์ด Socket Timeout Exception์ด๋ผ๊ณ ํ๋ค


	#์ด๊ธฐ์ ๋ฐฉ๋ฒ(Socket Timeout Exception๋ฐ์์ ๊ฐ์ ํ ๊ณผ์ )
	(@Controller + ๊ธฐ์์ฒญAPI ๋ฐ์ดํฐ ๊ฐ) โ Socket Timeout Exception โ View๋ฅผ ๋ง๋ค์ง ๋ชปํจ.

	#ํด๊ฒฐ ๋ฐฉ๋ฒ(Socket Timeout Exception๋ฐ์์ ๊ฐ์ ํ ๊ณผ์ )
	@Controller โ View โ (@RestController +  ๊ธฐ์์ฒญAPI ๋ฐ์ดํฐ๊ฐ)
	โ Socket Timeout Exception โ  View๋ ์์ ๋ก๋ฉ์ด๋์ด์๊ณ  ๋ ์จ์ ์ ๋ณด๋ง ๋ค์ด๊ฐ์ง ๋ชปํจ.
</details> 

	
<details>
	<summary> validation.BindException </summary>
	error log:
	WARN : org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver - Resolved [org.springframework.validation.BindException: 			org.springframework.validation.BeanPropertyBindingResult: 1 errors
	Field error in object 'touristSpot' on field 'image': rejected value 								[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@71968e84]; codes [typeMismatch.touristSpot.image,typeMismatch.image,typeMismatch.java.lang.String,typeMismatch]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [touristSpot.image,image]; arguments []; default message [image]]; default message [Failed to convert property value of type 'org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile' to required type 'java.lang.String' for property 'image'; nested exception is java.lang.IllegalStateException: Cannot convert value of type 'org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile' to required type 'java.lang.String' for property 'image': 		no matching editors or conversion strategy found]]


	์์ธ:
	<input type="file" name="image" id="image">
	์ปจํธ๋กค๋ฌ์์ image ํ์ผ์ @RequestParam("image") MultipartFile๋ก ๋ฐ์์จ๋ค.
	๊ทธ ํ @ModelAttribute TouristSpot touristSpot ๋ฅผ ํ๋ ์์ ๊ฐ์ ์๋ฌ ๋ก๊ทธ๊ฐ ๋์๋ค.
	์๋ฌ ๋ก๊ทธ๋ฅผ ์์ธํ ๋ณด๋ [typeMismatch.touristSpot.image,typeMismatch.image,typeMismatch.java.lang.String,typeMismatch] ๊ฐ ๋์ ๋๋ค.
	TouristSpot์ String ํ์ image ๋ฉค๋ฒ ๋ณ์์ MultipartFile๋ก ๋ฐ์์จ image๊ฐ type ์๋ฌ๋ฅผ ์ผ์ผํจ ๊ฒ.

	
	ํด๊ฒฐ:
	input ํ๊ทธ์ name์ TouristSpot์ ๋ฉค๋ฒ ๋ณ์ ์ด๋ฆ๊ณผ ๋ค๋ฅด๊ฒ ๋ฐ๊พธ์ด ์ฃผ๊ณ , 
	image path๋ฅผ string ํ์์ผ๋ก ๋ณํํด TouristSpot์ setImage ๋ฉ์๋๋ฅผ ์ฌ์ฉํด ์ถ๊ฐํ๋ค.
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

	
	shema ๋ฒ์ ์ ์ญ์ 
	------
	error: Failed to evaluate expression 'ROLE_USER'
	solution:
	<security:intercept-url pattern="/**" access="ROLE_USER" />
	<security:intercept-url pattern="/**" access="hasRole('ROLE_USER')" />

	hasRole์ ์ถ๊ฐ
	
	error: There is no PasswordEncoder mapped for the id "null"
	solution:
	์คํ๋ง ๋ฒ์  5์ด์๋ถํฐ๋ password ์์ ์๋ณ์๋ฅผ ๋ฃ์ด์ผ ํจ
	์ํธํ๋ฅผ ์ฌ์ฉํ์ง ์๋๋ค๋ฉด {noop}์ ์ถ๊ฐ
	<security:user name="guest" password="{noop}guest" authorities="hasRole('ROLE_USER')"/>

	
</details> 
	
	
<details>
	<summary> ;๊ธฐํธ๋ฅผ XXS(ํฌ๋ก์ค์ฌ์ดํธ์คํฌ๋ฆฝํ) ์ ๋ฐ ๋ฌธ์๋ก ์ธ์ ์ค๋ฅ </summary>   
	์ค๋ฅ: org.springframework.security.web.firewall.RequestRejectedException: The request was rejected because the URL contained a potentially malicious String ";"
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

	์์ธ:  
	Spring security ๋ฒ์ ๋ ์๊ทธ๋ ์ด๋ ๋์๊ณ  ;๊ธฐํธ๋ฅผ XXS(ํฌ๋ก์ค์ฌ์ดํธ์คํฌ๋ฆฝํ) ์ ๋ฐ ๋ฌธ์๋ก ์ธ์
	๊ฐ์ด ์ฒจ๋ถํ๋ ์ฌ์ง๊ณผ ๊ฐ์ด ๊ฒฝ๋ก ๋ค์ ์ธ์ID ๊ฐ์ด ๋ถ์ผ๋ฉฐ ๋ฌธ์ ๊ฐ๋จ
	์ธ์ ID๊ฐ์ด ๋ถ๋ ์ด์ ๋ ํฐ์บฃ์๋ฒ์์ jstl <c:url/>์ ์ฌ์ฉํ  ๋ ์ต์ดํธ์ถ์ ์ธ์ID๋ฅผ ๋ถ์ด๊ธฐ ๋๋ฌธ.
	์ ์ธ์์ด ๋ง๋ค์ด์ง๋ฉด ํด๋ผ์ด์ธํธ๊ฐ ์ฟ ํค๋ฅผ ์ง์ํ๋์ง ์ฌ๋ถ๋ฅผ ์๋ฒ๊ฐ ์ ์ ์์ผ๋ฏ๋ก ์ฟ ํค์ URL์ ๋ชจ๋ jsessionid ๊ฐ ๋ง๋ค์ด์ง๋ค.

	ํด๊ฒฐ๋ฐฉ์:
	web.xml์ ์๋์ ๊ฐ์ session-config ๊ฐ์ ์ถ๊ฐ
	<session-config>
	    <session-timeout>600</session-timeout>
 	   <tracking-mode>COOKIE</tracking-mode>
	</session-config>
</details> 

***  




## ๐ธ _Demonstration Video_   

๊ด๋ฆฌ์ ํ์ด์ง ์์ 


https://user-images.githubusercontent.com/77534863/140022922-ea4abd8b-bc11-41ad-9e34-d50f3f15bc84.mp4


์ ์  ๋ก๊ทธ์ธ ์์


https://user-images.githubusercontent.com/77534863/140023092-b2b53490-74bb-489e-b198-48fd1c0abd79.mp4



๋ง์ดํ์ด์ง ์์


https://user-images.githubusercontent.com/77534863/140025906-3ca0d787-b4b5-4ca1-ba76-5531e88aa6e7.mp4



๋ฉ์ธ ํ์ด์ง ์์


https://user-images.githubusercontent.com/77534863/140023221-a89a92f1-c6d6-40c4-b7fd-adc9c1ae7dd5.mp4



๊ฒ์๊ธ ์์ฑ ์์


https://user-images.githubusercontent.com/77534863/140025742-47841b7a-1a23-45a8-909b-d1a645b75d87.mp4



๊ฒ์๊ธ ๊ฒ์ ๋ฐ ์์ธ๋ณด๊ธฐ 


https://user-images.githubusercontent.com/77534863/140026032-dcabc5fe-54f9-4f95-b596-308a1c57792d.mp4


๊ฒ์๊ธ ์ข์์ ์์


https://user-images.githubusercontent.com/77534863/140022485-3896cdac-8eae-47d1-884c-779528603486.mp4


ํด๋ฆฌ๊ณค ์์


https://user-images.githubusercontent.com/77534863/140022679-477f4222-4c91-48bb-b9c7-e8326401797e.mp4



๊ฒฝ๋กํ์ด์ง ์นด๋ ๊ฒ์ 


https://user-images.githubusercontent.com/77534863/140026177-4239ae06-eca6-42ee-8a96-7fac78685e0d.mp4



๊ฒฝ๋กํ์ด์ง ์นด๋ ๋ฐ์ดํฐ ๊ตํ ๋ฐ ์ฌํ๊ฒฝ๋ก ๋ณด๊ธฐ


https://user-images.githubusercontent.com/77534863/140026318-d381e06a-1ca7-468b-b669-4acb2b5d79e1.mp4


๊ฒฝ๋กํ์ด์ง ์นด๋ ์ญ์  ๋ฐ Drag&Drop 


https://user-images.githubusercontent.com/77534863/140026490-3908649c-459e-43f8-81a2-ce6631c53a70.mp4



๊ฒฝ๋กํ์ด์ง ์ฌํ๊ฒฝ๋ก ์ ์ฅ 


https://user-images.githubusercontent.com/77534863/140026727-06e17148-8a5d-4c26-aa26-cd2e9e371285.mp4



๊ฒฝ๋กํ์ด์ง ์ด์ฉ๋ฐฉ๋ฒ ๋ชจ๋ฌ 


https://user-images.githubusercontent.com/77534863/140026922-e327ddb7-4407-4784-b79b-3267823b80ec.mp4






