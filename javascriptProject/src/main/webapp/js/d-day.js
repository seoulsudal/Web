function getDday(y, m, d){
	var today = new Date();
	
	var dday = new Date(y, m-1, d);
	
	var cnt = dday.getTime() - today.getTime();
	
	var n = Math.ceil(cnt / ( 24 * 60 * 60 * 1000));
	
	return n;
}

var date = new Date();
var y = date.getFullYear();
var dday = getDday(y, 12, 31);

document.write("<h1>올해는 앞으로 " + dday + "일 남았습니다.</h1>");