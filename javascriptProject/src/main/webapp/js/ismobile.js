function isMobile(){
	var tmpUser = navigator.userAgent;
	var isMobile = false;
	
	if(tmpUser.indexOf("iphone") > 0 || tmpUser.indexOf("ipad") > 0 || tmpUser.indexOf("ipod") > 0 || tmpUser.indexOf("Android") > 0){
	isMobile = true;	
	}
	
	return isMobile;
}

var isMobileWeb = isMobile();

if(isMobileWeb){
	document.write("<h1>모바일 웹 브라우저로 접속하셨습니다.</h1>");
}
else{
	document.write("<h1>PC용 브라우저로 접속하셨습니다.</h1>");
}