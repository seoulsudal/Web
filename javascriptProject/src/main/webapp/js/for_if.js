var sum1 = 0;
var sum2 = 0;
for(var i = 1; i <= 100; i++){
	if(i % 2 == 0){
		sum1 += i;
	} else{
		sum2 += i;
	}
}

document.write("<h1>짝수들의 합 = " + sum1 + "</h1>");
document.write("<h1>홀수들의 합 = " + sum1 + "</h1>");