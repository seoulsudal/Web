function setImage(index){
	var image_list = [
		'image/1.jpg',
		'image/2.jpg',
		'image/3.jpg'
	];
	
	var image = document.getElementById("target");
	
	image.src = image_list[index];
}