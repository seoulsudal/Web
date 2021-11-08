function setPopUpStart(obj){
	if(obj.checked == true){
		var expireDate = new Date();
		var days = 1;
		expireDate.setDate(expireDate.getDate() + days);
		document.cookie = "notShowPop=" + "true" + ";path=/; expires=" + expireDate.toGMTString();
		window.close;
	}
}