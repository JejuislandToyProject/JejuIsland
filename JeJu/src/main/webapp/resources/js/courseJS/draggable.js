var lists = [];
$(function() {

    $("#leftSidebar-3").sortable({
	// 버튼의 좌표값을 가져오면 실현가능.
	stop:function(event,ui){ 
		markers = [];
		var vcheck = document.querySelectorAll('.cardSmallBtn');  	
		
		for(var j = 0; j < vcheck.length; ++j){
			var checker = vcheck[j].getAttribute('value').split('/');

			markerPosition = new kakao.maps.LatLng(checker[0],checker[1]);

 			var marker = new kakao.maps.Marker({
  			 position: markerPosition,
  			 image: markerImage
		 });
	
		markers.push(marker);
		};
		console.log('드래그 앤 드롭 : '+markers[0].getPosition().getLat());
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