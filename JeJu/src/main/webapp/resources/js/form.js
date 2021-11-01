/**
 * 
 */
document.getElementById("user_id").style.display="none";

$(document).ready(function(){
        $("#btnSave").click(function(){
           
           var title = $("#title").val();
           var name = $("#name").val();
           var description = $("#description").val();
           var image = $("#image").val();
        
           if(title ==""){
                   alert("제목을 입력하세요");
                   document.form1.title.focus();
           }
            else if(name ==""){
                alert("제목을 입력하세요");
                document.form1.name.focus();
           }
           else if(description ==""){
                alert("내용을 입력하세요");
                document.form1.description.focus();
           }
           else if(image ==""){
                alert("이미지를 선택하세요");
                document.form1.image.focus();
           }else{
	 		console.log('글 작성 자격 주어짐.');
			}

		   
			
        });
});