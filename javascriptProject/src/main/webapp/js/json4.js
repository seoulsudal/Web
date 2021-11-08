var bbs = {
	"title": "javascript",
	"description": "교육원에서 진행중인 Javascript 강의 자료 입니다. 각 게시판의 다운로드 권한은 매 강의 개강시마다 부여됩니다.",
	"total": 4,
	"item": [
		{"no": "공지", "subject": "'javascript' 강의 자료실 입니다.", "hit": 3, "date": "2015.10.29"},
		{"no": "3", "subject": "javascript 3일차 강의자료 입니다.", "hit": 6, "date": "2015.11.08"},
		{"no": "2", "subject": "javascript 2일차 강의자료 입니다.", "hit": 15, "date": "2015.11.07"},
		{"no": "1", "subject": "javascript 1일차 강의자료 입니다.", "hit": 19, "date": "2015.11.05"}
	]
};

var html = "<h1>" + bbs.title + "</h1>";
html += "<p>" + bbs.description + "</p>";
html += "<p>총 게시물 수: " + bbs.total + "개</p>";
html += "<ul>";

for(var i = 0; i < bbs.item.length; i++){
	var item = bbs.item[i];
	html += "<li>(" + item.no + ") " + item.subject + "(조회수: " + item.hit + " / 날짜: " + item.date + ")</li>"; 
}

html += "</ul>";

document.write(html);