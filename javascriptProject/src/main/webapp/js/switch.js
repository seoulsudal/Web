var grade = "B";

switch(grade){
	case "A":
	document.write("<h1>91~100점 사이 입니다.</h1>");
	break;
	case "B":
	document.write("<h1>81~90점 사이 입니다.</h1>");
	break;
	case "C":
	document.write("<h1>71~80점 사이 입니다.</h1>");
	break;
	default:
	document.write("<h1>70점 이하 입니다.</h1>")
	break;
}