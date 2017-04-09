var counterHeads = 0;
var counterTails = 0;
var coinImage = document.getElementById("coinPixel");
var scoreHeads = document.getElementById("scoreHeads");
var scoreTails = document.getElementById("scoreTails");
var winner = "";
var startDeg = 20;
coinImage.style.transform='none';

var coinAnimate = function(){
    for(var i =0; i < 16 ; i++){
      if(startDeg > 360){
        startDeg = 20;
        coinImage.style.transform="rotateY("+startDeg+"deg)"
      }else{
        startDeg += 20;
        coinImage.style.transform="rotateY("+startDeg+"deg)"
        }
    }
}

var x = 0;
var startSpinning = function(){
     x = setInterval(coinAnimate,60);
};

var getResult = function(){
  clearInterval(x);
  coinFlip();
}

var coinFlip = function(){
  coinImage.src="http://pixelartmaker.com/art/c3d18570de89dd0.png";
  var chance = Math.floor(Math.random() * 2);
  if(chance == 0){
    counterHeads++;
    scoreHeads.innerHTML = "Heads - " + counterHeads;
    coinImage.src="http://orig02.deviantart.net/1c1e/f/2011/331/2/a/dragon_coin_by_legend_tony980-d4hiunj.gif";
  }else{
    counterTails++;
    scoreTails.innerHTML = "Tails - "+counterTails;
  }
  if(counterHeads === 5){
    winner = 'Heads';
    alert(winner +" is the Winner!!~~");
    resetScoreTable();
  }else if(counterTails === 5){
    winner = 'Tails';
    alert(winner +" is the Winner!!~~");
    resetScoreTable();
  }
};

var resetScoreTable = function(){
  counterHeads = 0;
  counterTails = 0;
  scoreHeads.innerHTML = "Heads - "+counterHeads;
  scoreTails.innerHTML = "Tails - "+counterTails;
}


var flipBtn = document.getElementById('flip-Btn');
flipBtn.addEventListener('click',startSpinning);
var stopBtn = document.getElementById('stop-Btn');
stopBtn.addEventListener('click',getResult)
