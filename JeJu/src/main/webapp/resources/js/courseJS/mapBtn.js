// 지도위 버튼 
const useMethodBtn = document.getElementById('useMethodBtn');
const rollbackBtn = document.getElementById('rollbackBtn');
const saveCourseBtn = document.getElementById('saveCourseBtn');
const courseItems = document.getElementById('courseItems');

useMethodBtn.addEventListener('click', event => {
    console.log("click useMethodBtn");
    $('.introduce-modal, .overlay').addClass('active')
 });
 
// 이용방법 모달 관련 jQuery
$('.introduce-close, .overlay').click(function(){
   $('.introduce-modal, .overlay').removeClass('active')
});

rollbackBtn.addEventListener('click', event => {
    var moveLatLon = new kakao.maps.LatLng(33.36209328052907,
          126.53147109994914);
    map.setLevel(9);
 
    map.panTo(moveLatLon);
});

// 경로저장 버튼 클릭 시 모달에 선택한 카드들의 경로를 띄워주는 기능 
saveCourseBtn.addEventListener('click', event => {
      var moveLatLon = new kakao.maps.LatLng(33.47406640517919,
            126.59635525019404);
      map.setLevel(9); 
      $('.save-modal, .save-overlay').addClass('active')
      $(document).ready(function() {
            $(courseItems).empty();
      });
 		var vcheck = document.querySelectorAll('.cardSmallBtn');

		names = [];
		for(var j = 0; j < vcheck.length; ++j){
			var checker = vcheck[j].getAttribute('id');
			names.push(checker);
		};
		

      submitModal(names);
      
      map.panTo(moveLatLon);    
});

// 모달에 카드들 사이에 화살표 이미지를 넣어주는 기능 
function addArrow(){
	console.log("addArrow 실행");
	const maindiv = document.createElement('hs');

    const arrowimg = document.createElement('img');
    arrowimg.src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQer2Osn3XH3Q7U2QsqieeWfeC1pE6dcBZgwQ&usqp=CAU";
    arrowimg.setAttribute('class','arrowImg');

    courseItems.appendChild(maindiv);
    maindiv.appendChild(arrowimg);
    
}

//경로저장 모달 관련 jQuery
$('.btn-close, .save-overlay').click(function(){
$('.save-modal, .save-overlay').removeClass('active')
});

// ajax로 RestController를 통해 DB 데이터를 json형식으로 가져다주는 기능 
function submitModal(names){
	   const xhttp = new XMLHttpRequest();
	  

	   xhttp.addEventListener('readystatechange', (e) => {
	       const readyState = e.target.readyState;
	       const httpStatus = e.target.status;
	           
	       if(readyState == 4 && httpStatus == 200) {
	          
	           for(var i = 0; i < Object.keys(JSON.parse(e.target.responseText)).length; ++i){ 
	              
	        	   addSaveCourseModal(JSON.parse(e.target.responseText)[i]);
	        	   
	        	   if (i < Object.keys(JSON.parse(e.target.responseText)).length -1) {
	         		  addArrow();
	         	   }
	           }    
	         
	       }
	     });  
	     xhttp.open('GET', './modalSearch/' + names, true);
	     xhttp.setRequestHeader('content-type', 'application/json;charset=UTF-8');
	     xhttp.send();
};