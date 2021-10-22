// 검색관련 버튼들 
const searchBox = document.getElementById('searchBox');
const magBtn = document.getElementById('magBtn');

// 검색할 시 오른쪽 남아있는 카드들 삭제와 동시에 search함수 실행 
magBtn.addEventListener('click', event =>{
	$(document).ready(function() {
        $("#right-box3").empty();
 	});
	var textValue = searchBox.value;
   search(textValue);
});

// 검색기능 구현 
function search(textValue){
   const xhttp = new XMLHttpRequest(); 
   xhttp.addEventListener('readystatechange', (e) => {
       const readyState = e.target.readyState;
       const httpStatus = e.target.status;
           
       if(readyState == 4 && httpStatus == 200) {
           for(var i = 0; i < Object.keys(JSON.parse(e.target.responseText)).length; ++i){
                addToList(JSON.parse(e.target.responseText)[i]);
           }     
       }
  });
     xhttp.open('GET', './search/' + textValue, true);
     xhttp.setRequestHeader('content-type', 'application/json;charset=UTF-8');

     xhttp.send();
};