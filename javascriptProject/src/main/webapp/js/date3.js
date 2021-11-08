var theday = new Date(2021, 1, 1);
var today = new Date();
var cnt = today.getTime() - theday.getTime();

var day = Math.floor(cnt / (24 * 60 * 60 * 1000));
document.write("<h1>올해는 " + day + "일 지났습니다.</h1>")