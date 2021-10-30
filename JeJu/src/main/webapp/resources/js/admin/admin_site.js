const image = document.getElementById('main-visual-image');
const file = document.getElementById('image');
const fileName = document.getElementById('file-name'); 

file.addEventListener('change', (e) => {
	let uploadName = file.value;
	fileName.value = uploadName;
	setThumbnail(e);
});

function setThumbnail(event) { 
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		image.setAttribute("src", event.target.result); 
	}; 
	reader.readAsDataURL(event.target.files[0]); 
}
