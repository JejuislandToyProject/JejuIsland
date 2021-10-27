var lists = [];
$(function() {

    $("#leftSidebar-3").sortable({
	// 버튼의 좌표값을 가져오면 실현가능.
	stop:function(event,ui){ 	
		positions = [];
		names = [];
		var vcheck = document.querySelectorAll('.cardSmallBtn');  
		console.log("삭제 돌ㅇ감");
		for(var i = 0; i < markers.length; ++i){
			markers[i].setMap(null);
			console.log("삭제 돌ㅇ감2");
		}	
		markers = [];
		
		for(var j = 0; j < vcheck.length; ++j){
			var checker = vcheck[j].getAttribute('value').split('/');
			var passName = vcheck[j].getAttribute('id');

			markerPosition = new kakao.maps.LatLng(checker[0],checker[1]);
			positions.push(markerPosition); // 마커 텍스트 초기화위해 필요
			names.push(passName);
			
 			var marker = new kakao.maps.Marker({
  			 position: markerPosition,
  			 image: markerImage
		 });
		marker.setMap(map);
		markers.push(marker);
		};

		for (var i = 0; i < ovarlays.length; i++){
             ovarlays[i].setMap(null);
     	}  
		ovarlays = [];
		for(var j = 0; j < positions.length; ++j){
		var content = '<div class="customoverlay">' +
    	 '  <a>' +
    	 '   <span id="numbers"></span> <span class="title">'+names[j]+'</span>'
     	'  </a>' +
    	 '</div>';

      	 addText(positions[j], content);
	}

      for (var i = 0; i < lines.length; i++){
          lines[i].setMap(null);
      }              
      lines = [];
	}
	});

    $("#leftSidebar-3").disableSelection();

});

/*
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>
 */