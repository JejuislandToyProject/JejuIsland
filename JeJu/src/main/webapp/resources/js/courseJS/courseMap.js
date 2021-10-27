var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = {
         center : new kakao.maps.LatLng(33.37662091496372,
               126.54184935725567), // 지도의 중심좌표
         level : 9
      // 지도의 확대 레벨
      };

      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
      var map = new kakao.maps.Map(mapContainer, mapOption);
      
      var mapTypeControl = new kakao.maps.MapTypeControl();

      // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
      // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
      map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

      // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
      var zoomControl = new kakao.maps.ZoomControl();
      map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

// 맵의 마커끼리 선을 그어주는 기능 // 경로 저장 버튼을 누르면 여기서 순서를 만들어서 띄워줘야함!
// 1 이 버튼을 누를때에 기존 마커 텍스트 들을 다 지워버린다.
const lookCourseBtn = document.getElementById('lookCourseBtn');
      lookCourseBtn.addEventListener('click', event =>{
	 	
	for (var i = 0; i < ovarlays.length; i++){
             ovarlays[i].setMap(null);
     	}  
		 ovarlays = [];
         addLine(markers);

	for(var j = 0; j < positions.length; ++j){
		var content = '<div class="customoverlay">' +
    	 '  <a>' +
    	 '   <span id="numbers">'+(j+1)+'</span> <span class="title">'+names[j]+'</span>'
     	'  </a>' +
    	 '</div>';

      	 addText(positions[j], content);
	}

 

      });
      
      function addLine(markers){
         var linePath=[];      
         for (i=0; i < markers.length; ++i){
            linePath.push(markers[i].getPosition()); 
         }   



         // 지도에 표시할 선을 생성합니다
         var polyline = new kakao.maps.Polyline({
             path: linePath, // 선을 구성하는 좌표배열 입니다
             strokeWeight: 2, // 선의 두께 입니다
             strokeColor: 'red', // 선의 색깔입니다
             strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
             strokeStyle: 'solid' // 선의 스타일입니다
         });
         lines.push(polyline);
         // 지도에 선을 표시합니다 
         polyline.setMap(map); 
 }