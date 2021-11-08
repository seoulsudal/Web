function getCenterPixcel(){
	var center = new Array(
		parseInt(screen.availWidth/2), parseInt(screen.availHeight/2)
	);
	return center;
}

var screenCenter = getCenterPixcel();
document.write("<h1>모니터 화면의 중심 좌표 : x=" +screenCenter[0] + "px, y=" + screenCenter[1] + "px</h1>");