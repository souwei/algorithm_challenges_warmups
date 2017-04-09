var myResults = [ {name: "six pack of beer", location: {lat: 37.767182, long: -122.5}},
          {name: "whacky glasses", location: {lat: 37.767182, long: -122.51}},
          {name: "whiskey bottle", location: {lat: 37.767282, long: -122.49}},
          {name: "diving goggles", location: {lat: 37.770282, long: -122.503}},
          {name: "running shoes", location: {lat: 37.7669, long: -122.457}},
          {name: "paint brushes", location: {lat: 37.76800, long: -122.4580}}];

var sortedResults = [];

$('.test').click(function() {
  var userLat = $('.lat').val();
  var userLong = $('.long').val();

  myResults.forEach(function(element) {
    //calculate lat and long difference
    var latDifference = userLat - element["location"]["lat"];
    var longDifference = userLong - element["location"]["long"];

    //inverse negative values
    if ( latDifference < 0 ){
      latDifference *= -1;
    }
    else if ( longDifference < 0 ){
      longDifference *= -1;
    }

    //combine to get overall difference
    var distance = latDifference + longDifference;
    sortedResults.push([element["name"],distance]);

  });

  sortedResults.sort(function(a, b) {
    return a[1] - b[1];
  });

  console.log(sortedResults);
  updateResults(sortedResults);

});

function updateResults(resultPair) {
  var $container = $("<div>", {"class": "results", "text":sortedResults});
  $('.results').append($container);
}
