/**
 * 
 */
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

           document.form1.submit();

        });
});

function uploadFile() {
  $.ajax({
    url: "/addTourist/success",
    type: "POST",
    data: new FormData($("#upload-file-form")[0]),
    enctype: 'multipart/form-data',
    processData: false,
    contentType: false,
    cache: false,
    success: function () {
      // Handle upload success
      // ...
    },
    error: function () {
      // Handle upload error
      // ...
    }
  });
}