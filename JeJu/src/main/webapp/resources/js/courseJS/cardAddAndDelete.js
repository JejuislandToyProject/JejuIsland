//배열 선언 
var markers = [];
var ovarlays = [];
var lines = [];
var names = [];
// 따로 빼둠 값이 고정되어있어서.
 var imageSrc = 'https://cdn.discordapp.com/attachments/867049212196945931/900625341746413598/dolhareubang-3.png', // 마커이미지의 주소입니다    
     imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
     imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

 // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
 var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

// 맵에 마커 위에 제목을 써주는 기능 
function addText(pos, con){   
          var customOverlay = new kakao.maps.CustomOverlay({
               map: map,
               position: pos,
               content: con,
               yAnchor: 1     
           });      
         ovarlays.push(customOverlay);
};
  
// 오른쪽 카드 선택시 왼쪽으로 카드를 넘겨주는 기능 
// 맵에 마커와 커스텀 오버레이를 생성해줌 
// 중복검사 기능 
function addCard(cardTitle, value){
   
     var check = 'false';

     for(var i = 0; i < names.length; ++i){
        if(names[i] == cardTitle){
           check = 'true';
        }  
     }
   if(check == 'true'){
      alert('이미 추가된 항목입니다!');
      
   }else{
      names.push(cardTitle);
         const xhttp = new XMLHttpRequest();
         var checker = value.split('/');
         
 var markerPosition = new kakao.maps.LatLng(checker[0],checker[1]); // 마커가 표시될 위치입니다

 // 마커를 생성합니다
 var marker = new kakao.maps.Marker({
   position: markerPosition,
   image: markerImage // 마커이미지 설정 
 });

 var content = '<div class="customoverlay">' +
     '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
     '    <span class="title">'+cardTitle+'</span>' +
     '  </a>' +
     '</div>';
 // 커스텀 오버레이가 표시될 위치입니다 
 var position = new kakao.maps.LatLng(checker[0],checker[1]);
       // 커스텀 오버레이를 생성합니다
       
       addText(position, content);      
       
     // 마커가 지도 위에 표시되도록 설정합니다
     marker.setMap(map);  
     markers.push(marker);

         xhttp.addEventListener('readystatechange', (e) => {
              const readyState = e.target.readyState;
              const httpStatus = e.target.status;
              
              if(readyState == 4 && httpStatus == 200) {
                addToListLeft(JSON.parse(e.target.responseText));          
                
              }
            });

            xhttp.open('GET', './select/' + cardTitle, true);
            xhttp.setRequestHeader('content-type', 'application/json;charset=UTF-8');
            xhttp.send();
   }
};


//카드가 반대쪽으로 넘어갈 때 카드를 삭제해주고 배열에서 해당카드 인덱스를 삭제       
function deleteRow(ths, thsId, idName){
      var ths = $(ths);
         
      for(var i = 0; i < names.length; ++i){
         if(names[i] == thsId){
            names.splice(i, 1);
         }
      }

	ths.closest('#'+idName).remove();
};

// 맵에 표시된 마커와 커스텀오버레이 삭제해주는 기능 
function deleteMarkers(map, value) {
     var coord = value.split('/');

      for (var i = 0; i < lines.length; i++){
             lines[i].setMap(null);
      }              
      lines = [];
		console.log('마커스 전 : '+markers[0].getPosition().getLat());
		console.log('크루드 0 : ' + coord[0]);
		console.log(markers[0].getPosition().getLat() == coord[0]);
      for (var i = 0; i < markers.length; i++) {
         if ((markers[i].getPosition().getLat()) == coord[0] || (markers[i].getPosition().getLng()) == coord[1]){
			console.log('이프문 안쪽 반복.');
              markers[i].setMap(null);
              ovarlays[i].setMap(null);
              markers.splice(i, 1);
              ovarlays.splice(i, 1);
         }
      }    

 }

// 선택목록에 추가된 카드들의 모든 정보 삭제     
const allDelete = document.getElementById('allDelete');
      allDelete.addEventListener('click', ()=> {
               $(jsonDataLeft).remove();

      for (var i = 0; i < markers.length; i++) { 
          markers[i].setMap(null);
          ovarlays[i].setMap(null); 
      }
	  names = [];
	  markers = [];
      ovarlays = [];
      for (var i = 0; i < lines.length; i++){
          lines[i].setMap(null);
      }              
      lines = [];
      
});