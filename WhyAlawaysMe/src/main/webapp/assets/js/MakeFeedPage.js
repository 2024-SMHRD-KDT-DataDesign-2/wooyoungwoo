function fileImg() {
	const reader = new FileReader();
	
	let img = document.querySelector("input[name='img']");
	let urlImg = reader.readAsDataURL(file);  // 파일을 읽어 Data URL로 변환

	img.value = urlImg;
	
	form.submit() ;
}