var people = {};

people.name = "홍길동";
people.gender = "남자";

people.sayName = function(){
	document.write("<h1>" + this.name + "</h1>");
}
people.sayGender = function(){
	document.write("<h1>" + this.gender + "</h1>");
}
people.saySomething = function(msg){
	document.write("<h1>" + msg + "</h1>");
}
people.getName = function(){
	return this.name;
}
people.getGender = function(){
	return this.gender
}
people.sayInfo = function(){
	document.write("<h1>" + this.getName() + "님은 " + this.getGender() + " 입니다.</h1>");
}
people.sayName();
people.sayGender();
people.saySomething("Hello javaScript");
people.sayInfo();