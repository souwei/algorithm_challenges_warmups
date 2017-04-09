console.log("Works");
var get_squares = function(number_array){
  function small_to_big(a,b) {
    return a - b;
  }

  var perfect_squares_array = [];
  number_array.forEach( function(element) {
    if ( ( Math.sqrt(element) % 1 ) === 0 ){
      if ( !perfect_squares_array.includes(element) ){
        perfect_squares_array.push(element);
      }
    }
  });

  return perfect_squares_array.sort(small_to_big);
}

console.log(get_squares([4, 1, 16, 1, 10, 35, 22]));
