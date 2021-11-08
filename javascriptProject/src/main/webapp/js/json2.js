function initCompany() {
	var company = {
		"name": "(주)굿디자인",
		"since": 2015,
		"department": ["기획팀", "영업팀", "디자인팀", "개발팀"],
		"biz": ["소프트웨어개발", "통신판매업", "위치정보서비스"]
	};

	document.getElementById("name").innerHTML = company.name;
	document.getElementById("since").innerHTML = company.since;

	var dept_li = "";

	for (var i = 0; i < company.department.length; i++) {
		dept_li += "<li>" + company.department[i] + "</li>";
	}

	document.getElementById("department").innerHTML = dept_li;

	var biz_li = "";

	for (var i = 0; i < company.biz.length; i++) {
		biz_li += "<li>" + company.biz[i] + "</li>";
	}

	document.getElementById("biz").innerHTML = biz_li;
}