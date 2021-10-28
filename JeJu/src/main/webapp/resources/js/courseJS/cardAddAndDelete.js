//배열 선언 
var markers = [];
var ovarlays = [];
var lines = [];
var names = [];
var positions = [];
// 따로 빼둠 값이 고정되어있어서.
var imageSrc = 'https://cdn.discordapp.com/attachments/867049212196945931/900625341746413598/dolhareubang-3.png', // 마커이미지의 주소입니다    
     imageSize = new kakao.maps.Size(30, 32), // 마커이미지의 크기입니다
     imageOption = {offset: new kakao.maps.Point(15, 32)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

 // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
 var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

// 맵에 마커 위에 제목을 써주는 기능 
function addText(pos, con){  // 줘야할 매개변수는  포지션(좌표), 콘탠츠(들어갈 값) : 경로보기를 누를때에 순서가 다 들어가고 드래그앤 드롭시에는 순서를 다시 다 날린다.
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
        
         var checker = value.split('/');
         
 var markerPosition = new kakao.maps.LatLng(checker[0],checker[1]); // 마커가 표시될 위치입니다

 // 마커를 생성합니다
 var marker = new kakao.maps.Marker({
   position: markerPosition,
   image: markerImage // 마커이미지 설정 
 });

 var content = '<div class="customoverlay">' +
     '  <a>' +
     '   <span id="numbers"></span> <span class="title">'+cardTitle+'</span>'
     '  </a>' +
     '</div>';
 // 커스텀 오버레이가 표시될 위치입니다 
 var position = new kakao.maps.LatLng(checker[0],checker[1]);
       // 커스텀 오버레이를 생성합니다
       positions.push(position);
       addText(position, content);      
       
     // 마커가 지도 위에 표시되도록 설정합니다
     marker.setMap(map);  
     markers.push(marker);

		 const xhttp = new XMLHttpRequest();

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
	 var latitude = parseFloat(coord[0]).toPrecision(14);
	 var longitude = parseFloat(coord[1]).toPrecision(14);

      for (var i = 0; i < lines.length; i++){
             lines[i].setMap(null);
      }              
      lines = [];

      for (var i = 0; i < markers.length; i++) {
         if ((markers[i].getPosition().getLat()).toPrecision(14) == latitude && 
											(markers[i].getPosition().getLng()).toPrecision(14) == longitude){
              markers[i].setMap(null);
              ovarlays[i].setMap(null);
              markers.splice(i, 1);
              ovarlays.splice(i, 1);
			  positions.splice(i, 1);
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
	  positions = [];
      for (var i = 0; i < lines.length; i++){
          lines[i].setMap(null);
      }              
      lines = [];
      
});

// GET방식
/*const courseSaveBtn = document.getElementById('courseSaveBtn');
	courseSaveBtn.addEventListener('click', () =>{
		const imagePath = document.querySelectorAll('.modalimg-fluid');
		var images = [];

		for(var i = 0; i < imagePath.length; ++i){
			var checker = imagePath[i].getAttribute('src');
			
		}		
		
		location.href = "./course/save/"+names;
	});*/
	
// POST 방식	
	$(document).ready(function(){
		$('#courseSaveBtn').click(function(){
			const imagePath = document.querySelectorAll('.modalimg-fluid');
			var images = [];
			
			for(var i = 0; i < imagePath.length; ++i){
			var checker = imagePath[i].getAttribute('src');
			images.push(checker);
			}			
			var form = $('<form></form>');
			form.attr('action', './course/save');
			form.attr('method', 'post');
			form.appendTo('body');
			form.append("<input type='hidden' value="+images+" name='imagePath'>");
			form.append('<input type="hidden" value="'+names+'" name="namePath">');
			form.submit();
		})
		
	})
