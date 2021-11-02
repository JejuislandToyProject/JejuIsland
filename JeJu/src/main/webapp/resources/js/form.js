/**
 * 
 */
document.getElementById("user_id").style.display="none";

$(document).ready(function(){
        $("#btnSave").click(function(){
	const testForm = document.getElementById('sortBy')
	console.log(testForm);
         var title = $("#title");
         var name = $("#name");
         var description = $("description");
         var image = $("#image");
         var latitude = $("#latitude").text();
         var longitude = $("#longitude").text();
         var location = $("#location").val();
		console.log(location);

           if(title ==""){
                   alert("제목을 입력하세요");
            /*document.form1.title.focus();*/
           }
            else if(name ==""){
                alert("제목을 입력하세요");
                /*document.form1.name.focus();*/
           }
           else if(description ==""){
                alert("내용을 입력하세요");
                /*document.form1.description.focus();*/
           }
           else if(image ==""){
                alert("이미지를 선택하세요");
                /*document.form1.image.focus();*/
           }else if(latitude =="" || longitude ==""){
             alert("지도의 마커를 클릭하여 위도,경도 값을 넣어주세요");
         }else{
             boardPath(location, latitude, longitude);
             
         }
         
        });
});

function boardPath(location,latitude, longitude){
    const sortbyForm = document.getElementById('sortBy');
   const sortbyLocation = document.querySelector('#sortBy > #location_path');
   const sortbyLatitude = document.querySelector('#sortBy > #getlatitude');
   const sortbyLongitude = document.querySelector('#sortBy > #getlongitude');

   sortbyForm.action= './addTourist/success';
   sortbyForm.method = 'post';
   sortbyForm.enctype = 'multipart/form-data';
   sortbyLocation.value = location;
   sortbyLatitude.value = latitude;
   sortbyLongitude.value = longitude;
   sortbyForm.submit();
}