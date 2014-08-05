// update_player_position('player1', 10);


// $('.active').on('click', function(the_event) {
//   $(this).hide()
// });

$(document).ready(function() {
  $(document).on('keyup', function(event) {
      if(event.keyCode == 80){
        var p = $('#player1_race .active').index();
        $('#player1_race .active').removeClass('active');
        $('#player1_race td').eq(p+1).addClass('active');
      }
      else if (event.keyCode == 65) {
        var p = $('#player2_race .active').index();
        $('#player2_race .active').removeClass('active');
        $('#player2_race td').eq(p+1).addClass('active');
      }
  });
});



// $('.active').on('keyup', function(event) {
//    $alert(event.keyCode)
//     $('.active').animate({
//             left: '20px',
//     });
//   });
// });



//Click event to restart the game
$(".restart-btn").on('click', function () {
    restartplay();
});