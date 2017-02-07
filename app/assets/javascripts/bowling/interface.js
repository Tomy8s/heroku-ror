
var bowlingControl = function() {
  game = new Game();
  game.randomAngle();
  $("#bowl").click(function() {
    game.play();
    game.randomAngle();
  });
};
$(document).ready(bowlingControl);
$(document).on('page:change', bowlingControl);