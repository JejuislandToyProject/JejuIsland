# _🍊JejuIsland Project🍊_
***
### Period : October 2021,  3 weeks. 
### Personnel : 6 명
### Team Member : 오수빈 최진호 최웅빈 최두식 양승모 진희
***
## 📌 _Environment_       
> UI       
> > Html,CSS,JavaScript. 

> Programming Language
> > Java version 11.0.1
  
> DataBase
> > Oracle DB version 18c
> > > 외부 라이브러리
> > > > ojdbc6.jar/HikariCP.jar/sql.jar. 
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
	<summary> add Trouble code</summary>      
</details> 
<details>
	<summary> add Trouble code</summary>      
</details> 

***  

## 🔆 _Bragging Code_    
 
 
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






