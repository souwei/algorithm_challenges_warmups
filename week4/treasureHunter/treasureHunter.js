var map1 = [
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","X","A","A"],
["A","A","A","A","A"],
["A","A","A","A","A"]
];
var map2 = [
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","X","A","A","A"]
];
var holyGrailMap = [
["v","v","V","v","S","S"],
["v","v","V","v","S","S"],
["v","v","V","v","S","S"],
["v","v","V","v","S","S"],
["v","v","G","v","S","S"],
["v","v","H","v","S","S"],
["v","v","V","v","S","S"],
["A","V","A","A","A","S"]
];

var treasureFinder = function(treasureMap,key){
  var coordinates = [];
  treasureMap.map(function(mapPiece,index){
    var columnIndex = mapPiece.indexOf(key);
    if(columnIndex!==-1){
      coordinates.unshift(columnIndex);
      coordinates.unshift(index);
    }
  });
  if (coordinates.length===2){
    return coordinates;
  }else{
    return "that doesnt belong in a museum!";
  }
};

console.log(treasureFinder(holyGrailMap,"G"));
console.log(treasureFinder(holyGrailMap,"H"));
console.log(treasureFinder(holyGrailMap,"V"));
