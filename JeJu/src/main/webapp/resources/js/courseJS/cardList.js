// 경로페이지 오른쪽 박스관련 
const right_box3 = document.getElementById('right-box3');
const restaurantBtn = document.getElementById('restaurantBtn');
const spotBtn= document.getElementById('spotBtn');

//맛집 버튼 클릭 시 컨트롤러를 통해 맛집 관련 데이터들을 가져와주는 기능 
restaurantBtn.addEventListener('click', event =>{  
         const xhttp = new XMLHttpRequest();  
         
         $(document).ready(function() {
            $("#right-box3").empty();
         });

          xhttp.addEventListener('readystatechange', (e) => {
            const readyState = e.target.readyState;
            const httpStatus = e.target.status;
            
            if(readyState == 4 && httpStatus == 200) {
              for(var i = 0; i < Object.keys(JSON.parse(e.target.responseText)).length; ++i){ 
                 addToList(JSON.parse(e.target.responseText)[i]);
              }
            }
          });
          xhttp.open('GET', './course/matzip', true);
          xhttp.setRequestHeader('content-type', 'application/json;charset=UTF-8');

          xhttp.send();
      });

// 관광지 버튼 클릭 시 컨트롤러를 통해 관광지 관련 데이터들을 가져와주는 기능 
spotBtn.addEventListener('click', event =>{
         const xhttp = new XMLHttpRequest();   
       
         $(document).ready(function() {
            $("#right-box3").empty();
         });
         
         xhttp.addEventListener('readystatechange', (e) => {
           const readyState = e.target.readyState;
           const httpStatus = e.target.status;
            
           if(readyState == 4 && httpStatus == 200) {
              for(var i = 0; i < Object.keys(JSON.parse(e.target.responseText)).length; ++i){ 
                  addToList(JSON.parse(e.target.responseText)[i]);
               }
           }
         });
         xhttp.open('GET', './course/spot', true);
         xhttp.send();
});