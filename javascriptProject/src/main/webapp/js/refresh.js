function random(n1, n2){
	return parseInt(Math.random() * (n2 - n1 + 1)) + n1;
}

function authNo(){
	var value = "";
	for(var i = 0; i < 5; i++){
		value += random(0, 9);
	}
	
	document.getElementById("auth").innerHTML = value;
}

function refresh(){
	location.reload();
}