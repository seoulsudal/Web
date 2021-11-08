function getWebBrowserName(){
	var agt = navigator.userAgent.toLowerCase();
	
	if(agt.indexOf("chrome") != -1){
		return 'Chrome';
	}
	else if(agt.indexOf("opera") != -1){
		return 'Opera';
	}
	else if(agt.indexOf("firefox") != -1){
		return 'Firefox';
	}
	else if(agt.indexOf("safari") != -1){
		return 'Safari';
	}
	else if(agt.indexOf("skipstone") != -1){
		return 'SkipStone';
	}
	else if(agt.indexOf("msie") != -1 || agt.indexOf("trident") != -1){
		return 'Internet Explorer';
	}
	else if(agt.indexOf("netscape") != -1){
		return 'Netscape';
	}
	else{
		return "Unknown";
	}
}

document.write("<h1>"+getWebBrowserName()+"</h1>")