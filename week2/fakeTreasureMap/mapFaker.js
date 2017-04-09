var makeFakeMap = function (rows,columns){
  var columnArray = [];
  var mapDataArray = [];
  var columnPrintingString = "";
  var randomMarkerRow = Math.floor(Math.random()*rows);
  var randomMarkerColumn = Math.floor(Math.random()*columns);
  var treasureMap = "";

  for(var currentRow = 0 ; currentRow < rows ; currentRow++){
    for(var currentColumn = 0; currentColumn < columns ; currentColumn++){
      if(currentRow === randomMarkerRow && currentColumn === randomMarkerColumn){
        columnArray.push("X");
        if(currentColumn === (columns - 1)){
          columnPrintingString = columnPrintingString + "\"X\"";
        }else{
          columnPrintingString = columnPrintingString + "\"X\"" + ",";
        }
      }else{
        columnArray.push("A");
        if(currentColumn === (columns - 1)){
          columnPrintingString = columnPrintingString + "\"A\"";
        }else{
          columnPrintingString = columnPrintingString + "\"A\"" + ",";
        }
      }
    }
      //Actual array to store data
      mapDataArray[currentRow] = columnArray;
      treasureMap += "[" + columnPrintingString + "]," + "\n";
      //clear temp holders for printing and array
      columnPrintingString = "";
      columnArray = [];
  }

  treasureMap = "[" + "\n" + treasureMap + "]\;";
  console.log(treasureMap);
  return mapDataArray;

}
