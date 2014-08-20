$ ->(document).ready(function() {

$ ->(".notice").fadeOut(2000);

$ ->(".notice").fadeOut( function() {
    $ ->(".notice").fadeOut(2000);
})   
  })
}
