/**
 * 
 */
document.getElementById("user_id").style.display="none";

$(document).ready(function(){
        $("#btnSave").click(function(){
           var user_id = $("#user_id").val();
           
           var title = $("#title").val();
           var name = $("#name").val();
           var description = $("#description").val();
           var image = $("#image").val();
        
           if(title ==""){
                   alert("제목을 입력하세요");
                   document.form1.title.focus();
           }

           if(name ==""){
                alert("제목을 입력하세요");
                document.form1.name.focus();
           }
           if(description ==""){
                alert("내용을 입력하세요");
                document.form1.description.focus();
           }
           if(image ==""){
                alert("이미지를 선택하세요");
                document.form1.image.focus();
           }
			if(user_id ==""){
	            alert("로그인해주세요");
	            document.form1.user_id.focus();
	       }
        });
});