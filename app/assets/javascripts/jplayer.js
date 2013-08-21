
$(document).ready(function(){
  $("#jquery_jplayer_1").jPlayer({
      swfPath: "/js/jplayer",
      supplied: "mp3"
    });
  
  $('a.play').click(function(e) {
      e.preventDefault();
      var title = $(this).attr('alt'); 
      $('#songtitle').html(title); 
      $("#jquery_jplayer_1")
          .jPlayer("setMedia", { mp3: this.href })
          .jPlayer("play");
  });
});