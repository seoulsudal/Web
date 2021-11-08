var info = "<h1>웹 브라우저 정보 확인</h1>";
info += "<p>브라우저 이름 : " + navigator.appName + "</P>";
info += "<p>브라우저 코드명 : " + navigator.appCodeName + "</P>";
info += "<p>플랫폼 정보 : " + navigator.platform + "</P>";
info += "<p>사용자 정보 : " + navigator.userAgent + "</P>";
info += "<p>브라우저 버전 : " + navigator.appVersion + "</P>";
document.write(info);