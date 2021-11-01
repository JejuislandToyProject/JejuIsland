<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 작성하기</title>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value='/resources/css/styles.css'/>" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/cssmodal.css'/>">
<script type="text/javascript" 
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=115edfd07bd1f09ac3a8881810a2bb4b"></script>

<script src="/resources/js/polugon.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Border CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/border.css' />">


<!--  -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
	
<!-- map API -->
<style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>

</head>
<body>
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg navbar-light fixed-top py-3 navbar-shrink"
		id="mainNav">
		<div class="container px-4 px-lg-5 mb-3">
			<a class="navbar-brand" href="#page-top">🍊Travel Jeju🍊</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href="#page-top">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#reservation">Reservation</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/listTourist"/>">Best
							Pick</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Board</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/login/"/>">Login</a></li>
				</ul>

			</div>
		</div>
	</nav>
	<c:forEach var="restaurant" items="${famous_restaurant }" />
	<!--header-->
	<div class="container pt-5 ps-0">
		<nav aria-label="breadcrumb">
			<ol
				class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5 mt-4">
				<li class="breadcrumb-item text-sm"><a
					class="opacity-3 text-dark" href="javascript:;"> <svg
							width="12px" height="12px" class="mb-1" viewBox="0 0 45 40"
							version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
	                <title>shop </title>
	                <g stroke="none" stroke-width="1" fill="none"
								fill-rule="evenodd">
	                  <g transform="translate(-1716.000000, -439.000000)"
								fill="#252f40" fill-rule="nonzero">
	                    <g transform="translate(1716.000000, 291.000000)">
	                      <g transform="translate(0.000000, 148.000000)">
	                        <path
								d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z"></path>
	                        <path
								d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z"></path>
	                      </g>
	                    </g>
	                  </g>
	                </g>
	              </svg>
				</a></li>
				<li class="breadcrumb-item text-sm"><a
					class="opacity-5 text-dark" href="<c:url value="/listTourist"/>">Best Pick</a></li>
				<li class="breadcrumb-item text-sm text-dark active"
					aria-current="page">New Project</li>
			</ol>
			<h6 class="font-weight-bolder mb-0">New Project</h6>
		</nav>

	</div>

	<!-- End Navbar -->
	<div id="form-container" class="container-fluid py-4 px-lg-5">

		<div class="row">
			<div class="col-lg-9 col-12 mx-auto">
				<div class="card card-body mt-4">
					<h5 class="mb-0 mt-2">제주의 관광 명소</h5>
					<p class="text-sm mb-0 mt-1">새로운 제주의 먹거리를 추가해보세요</p>
					<hr class="horizontal dark my-3">

					<form action="<c:url value="/addRestaurant/success?imageFile=${imageFile }"/>" method="post"
                        enctype="multipart/form-data">

						<label for="projectName" class="form-label">제목</label> <input
							type="text" class="form-control" name="title" id="title"
							placeholder="제목을 적어주세요"> <label for="projectName"
							class="form-label mt-2">명소이름</label> <input type="text"
							class="form-control" name="name" id="name"
							placeholder="이름을 적어주세요"> 
							<label for="projectName" class="form-label mt-2">장소</label>
						<div class="col-6">
							<Select name="location_id ">
								<c:forEach items="${locations }" var="location" varStatus="i">
									<option id="location" name="location"
										value="${location.location_id }">${location.location }
									</option>
									<br>
								</c:forEach>
							</Select>
						</div>
						<label for="projectName" class="form-label">해시태그</label> 
						<input type="text" class="form-control" name="hashtag" id="hashtag"
							placeholder="#태그 해주세요">
							
						<label class="mt-4">내용</label>
						<p class="form-text text-muted text-xs ms-1 mb-2">이곳을 추천하는 이유를
							적어주세요</p>
						<div id="editor" class="ql-container ql-snow">
							<textarea name="description" id="description" class="form-control"
								data-gramm="false" contenteditable="true" maxlength='250' rows="8"><c:out value="${content}" /></textarea>
						</div>
						 <label
							class="mt-4 mb-4 form-label">Starting Files</label>
						<!-- file add -->

						<input type="file" name="image" id="image">

						<div id="user_id">${id }</div>
						<!-- map API  -->
						<div class="map_wrap">
					    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
					
						    <div id="menu_wrap" class="bg_white">
						        <div class="option">
						            <div>
						                <form onsubmit="searchPlaces(); return false;">
						                    키워드 : <input type="text" value="제주도 맛집" id="keyword" size="15"> 
						                    <button type="submit">검색하기</button> 
						                </form>
						            </div>
						        </div>
						        <hr>
						        <ul id="placesList"></ul>
						        <div id="pagination"></div>
						        
						        
						    </div>
						    
						    위도 : <div id="latitude"></div>
						    경도 : <div id="longitude"></div>
						</div>

					
					<script>
					// 마커를 담을 배열입니다
					var markers = [];
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(33.36209328052907,126.53147109994914), // 지도의 중심좌표
					        level: 9 // 지도의 확대 레벨
					    };  
					
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// 장소 검색 객체를 생성합니다
					var ps = new kakao.maps.services.Places();  
					
					// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
					var infowindow = new kakao.maps.InfoWindow({zIndex:1});
					
					// 키워드로 장소를 검색합니다
					searchPlaces();
					
					//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
					var mapTypeControl = new kakao.maps.MapTypeControl();
					
					// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
					// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
					map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
					
					// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
					var zoomControl = new kakao.maps.ZoomControl();
					map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
					
					
					// 키워드 검색을 요청하는 함수입니다
					function searchPlaces() {
					
					    var keyword = document.getElementById('keyword').value;
					
					    if (!keyword.replace(/^\s+|\s+$/g, '')) {
					        alert('키워드를 입력해주세요!');
					        return false;
					    }
					
					    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
					    ps.keywordSearch( keyword, placesSearchCB); 
					}
					
					// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
					function placesSearchCB(data, status, pagination) {
					    if (status === kakao.maps.services.Status.OK) {
					
					        // 정상적으로 검색이 완료됐으면
					        // 검색 목록과 마커를 표출합니다
					        displayPlaces(data);
					
					        // 페이지 번호를 표출합니다
					        displayPagination(pagination);
					
					    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
					
					        alert('검색 결과가 존재하지 않습니다.');
					        return;
					
					    } else if (status === kakao.maps.services.Status.ERROR) {
					
					        alert('검색 결과 중 오류가 발생했습니다.');
					        return;
					
					    }
					}
					
					// 검색 결과 목록과 마커를 표출하는 함수입니다
					function displayPlaces(places) {
					
					    var listEl = document.getElementById('placesList'), 
					    menuEl = document.getElementById('menu_wrap'),
					    fragment = document.createDocumentFragment(), 
					    bounds = new kakao.maps.LatLngBounds(), 
					    listStr = '';
					    
					    // 검색 결과 목록에 추가된 항목들을 제거합니다
					    removeAllChildNods(listEl);
					
					    // 지도에 표시되고 있는 마커를 제거합니다
					    removeMarker();
					    
					    for ( var i=0; i<places.length; i++ ) {
					
					        // 마커를 생성하고 지도에 표시합니다
					        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
					            marker = addMarker(placePosition, i), 
					            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
					
					        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					        // LatLngBounds 객체에 좌표를 추가합니다
					        bounds.extend(placePosition);
					
					        // 마커와 검색결과 항목에 mouseover 했을때
					        // 해당 장소에 인포윈도우에 장소명을 표시합니다
					        // mouseout 했을 때는 인포윈도우를 닫습니다  
					        (function(marker, title) {
					            kakao.maps.event.addListener(marker, 'mouseover', function() {
					                displayInfowindow(marker, title);
					            });
					
					            kakao.maps.event.addListener(marker, 'mouseout', function() {
					                infowindow.close();
					            });
					
					
					            itemEl.onmouseover =  function () {
					                displayInfowindow(marker, title);
					            };
					
					            itemEl.onmouseout =  function () {
					                infowindow.close();
					            };
					            
					           /*  itemEl.onclick = function (index, places) {
					            	 var latlng = mouseEvent.latLng; 
					            	
					            	console.log("클릭:");
					            	console.log(places.address_name);
					            } */
					            
					            
					        })(marker, places[i].place_name);
					
					        fragment.appendChild(itemEl);
					    }
					
					    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
					    listEl.appendChild(fragment);
					    menuEl.scrollTop = 0;
					
					    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					    map.setBounds(bounds);
					}
					
					// 검색결과 항목을 Element로 반환하는 함수입니다
					function getListItem(index, places) {
					
					    var el = document.createElement('li'),
					    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
					                '<div class="info">' +
					                '   <h5>' + places.place_name + '</h5>';
					
					    if (places.road_address_name) {
					        itemStr += '    <span>' + places.road_address_name + '</span>' +
					                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
					    } else {
					        itemStr += '    <span>' +  places.address_name  + '</span>'; 
					    }
					                 
					      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
					                '</div>';
					                
					      
					
					    el.innerHTML = itemStr;
					    el.className = 'item';
					
					    return el;
					}
					
					// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
					function addMarker(position, idx, title) {
					    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
					        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
					        imgOptions =  {
					            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
					            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
					        },
					        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
					            marker = new kakao.maps.Marker({
					            position: position, // 마커의 위치
					            
					            image: markerImage 
					        });
					    
					    const coord = document.getElementById('coord');
					    
					    kakao.maps.event.addListener(marker, 'click', function() {				    	
					    	var moveLatLon = new kakao.maps.LatLng(Object.values(position)[1],Object.values(position)[0]);
					    	map.setLevel(5);
					        map.panTo(moveLatLon);

					    	latitude.innerHTML = Object.values(position)[1];
					    	longitude.innerHTML = Object.values(position)[0];
					    	
					    });
					
					    marker.setMap(map); // 지도 위에 마커를 표출합니다
					    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
					
					    return marker;
					}
					
					// 지도 위에 표시되고 있는 마커를 모두 제거합니다
					function removeMarker() {
					    for ( var i = 0; i < markers.length; i++ ) {
					        markers[i].setMap(null);
					    }   
					    markers = [];
					}
					
					// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
					function displayPagination(pagination) {
					    var paginationEl = document.getElementById('pagination'),
					        fragment = document.createDocumentFragment(),
					        i; 
					
					    // 기존에 추가된 페이지번호를 삭제합니다
					    while (paginationEl.hasChildNodes()) {
					        paginationEl.removeChild (paginationEl.lastChild);
					    }
					
					    for (i=1; i<=pagination.last; i++) {
					        var el = document.createElement('a');
					        el.href = "#";
					        el.innerHTML = i;
					
					        if (i===pagination.current) {
					            el.className = 'on';
					        } else {
					            el.onclick = (function(i) {
					                return function() {
					                    pagination.gotoPage(i);
					                }
					            })(i);
					        }
					
					        fragment.appendChild(el);
					    }
					    paginationEl.appendChild(fragment);
					}
					
					// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
					// 인포윈도우에 장소명을 표시합니다
					function displayInfowindow(marker, title) {
					    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
					
					    infowindow.setContent(content);
					    infowindow.open(map, marker);
					}
					
					 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
					function removeAllChildNods(el) {   
					    while (el.hasChildNodes()) {
					        el.removeChild (el.lastChild);
					    }
					}
					 
					/* kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
					    
					    // 클릭한 위도, 경도 정보를 가져옵니다 
					    var latlng = mouseEvent.latLng; 
					    
					    // 마커 위치를 클릭한 위치로 옮깁니다
					    marker.setPosition(latlng);
					    
					    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
					    message += '경도는 ' + latlng.getLng() + ' 입니다';
					    
					    console.log(latlng.getLat());
					    console.log(latlng.getLng());
					    
					    var resultDiv = document.getElementById('clickLatlng'); 
					    resultDiv.innerHTML = message;
					    
					}); */
					</script>

						<div class="d-flex justify-content-end mt-4">
							<button type="button" onclick="history.back()" 
								name="button" class="btn btn-light btn-outline-dark m-0">Cancel</button>
							<button id="btnSave" type="submit"
                                class="btn btn-success m-0 ms-2">Upload</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>




	<!-- Form -->

	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container px-4 px-lg-5">
			<!-- <ul class="list-inline mb-5">
	                <li class="list-inline-item">
	                    <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-facebook"></i></a>
	                </li>
	                <li class="list-inline-item">
	                    <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-twitter"></i></a>
	                </li>
	                <li class="list-inline-item">
	                    <a class="social-link rounded-circle text-white" href="#!"><i class="icon-social-github"></i></a>
	                </li>
	            </ul> -->
			<div class="logoimg">
				<!-- <img src="./assets/img/최종팀플 제주도 로고.png" alt=""> -->
			</div>
			<p class="text-muted small mb-0">Jeju Island</p>
		</div>
	</footer>
	<!-- scripts -->
	<script src="<c:url value='/resources/js/scripts.js' />"></script>

	<script src="<c:url value='/resources/js/restaurantForm.js/'/>"></script>


</body>
</html>
