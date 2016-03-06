	document.write('<h1>Сумма элементов в строке матрицы,мазафака</h1>');

	var array = [],
		sum = 0,
		numberRow = 0,
		result = 0;

	for(var i = 0;i<10;i++){
		array[i] = [];
		for(var j = 0;j<10;j++){
			array[i][j] = getRandom(10,99);//рандомные чмсла от 10 до 99
			sum += array[i][j];
			if(j === 9){
				document.write('<span>|  '+array[i][j]+'  |'+'  ---> Amount: '+sum+', line: '+(i+1)+'</span>');
			} else document.write('<span>|  '+array[i][j]+'  |</span>');
		}
		document.writeln('<p>+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------</p>');
	
		if(sum>result){
		result = sum;
		numberRow = i;
	}
		sum = 0;
	}

	document.write('<h1>Самая большая сумма элементов в строке ' + numberRow + ' и она равна ' + result + '</h1>');

function getRandom(min, max)
	{
	  return Math.round(Math.random() * (max - min) + min);
	}