var sentenceMessage = "**FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH**";
var arrayMessage = sentenceMessage.split(" ");

// var caesarMessage = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
var decipherCaesar = function(caesarMessage){
	var arrayNumASCII = [];
	var arrayString = [];
	for(var count = 0 ; count < caesarMessage.length ; count++){
		arrayNumASCII.push(caesarMessage.charCodeAt(count));
	}
	//shift keys
	for(var count = 0 ; count < arrayNumASCII.length ; count++){
		console.log(arrayNumASCII[count]);
		if(  arrayNumASCII[count] >= 65 && arrayNumASCII[count] <= 90){
			if ( arrayNumASCII[count] >= 68 ){
				arrayNumASCII[count] -= 3; 
			}else {
				arrayNumASCII[count] += 23;
			}
		}
		// if(arrayNumASCII[count] < 68){
		// 	//Ignore characters in lower range of ASCII table
			
		// 		arrayNumASCII[count] = (arrayNumASCII[count] - 3) + 26;
			
		// }else{
		// 	//Ignore characters in upper range of ASCII table
		
		// 		arrayNumASCII[count] =  arrayNumASCII[count] - 3;
			
		// }
		//testing
		// var value = arrayNumASCII[count];
		// console.log(value);
		
		// switch(value){
		// 	console.log("hell00");
		// 	case 68-90: 
		// 	arrayNumASCII[count] = (arrayNumASCII[count] - 3);

		// 	break;
		// 	case 65-67:
		// 	arrayNumASCII[count] = 90 - (65 -(arrayNumASCII[count] - 3)) ;
		// 	break;
		// }
	}

	for(var count = 0 ; count < arrayNumASCII.length ; count++){
		arrayString.push(String.fromCharCode(arrayNumASCII[count]));
	}
	return (arrayString.join(''));
}


for(var count = 0 ; count < arrayMessage.length ; count++){
	arrayMessage[count] = decipherCaesar(arrayMessage[count]);
}
console.log(arrayMessage.join(" "));