		function sumInt(x, y) {
			var isStrX = !isNaN(x);
			var isStrY = !isNaN(y);
			
			if(!isStrX || !isStrY){
				return "숫자 형태이거나 숫자값이 전달되어야 합니다.";
			}
			var result = parseInt(x) + parseInt(y);
			return result;
		}
		
		var sum1 = sumInt("a", 1);
		var sum2 = sumInt("1", "2");
		var sum3 = sumInt(100, "5.1");
		var sum4 = sumInt(-1, "-100");
		
		document.write("<h1>" + sum1 + "</h1>");
		document.write("<h1>" + sum2 + "</h1>");
		document.write("<h1>" + sum3 + "</h1>");
		document.write("<h1>" + sum4 + "</h1>");