$(document).ready(function() {
console.log($('.notice'))


$(".notice").fadeOut(2000)


$("form > input").keyup( function() {
    if ($(this).val() == "") {
      $(".submit_btn").attr("disabled", "disabled")}
    else{
      $(".submit_btn").removeAttr("disabled")
    }

})

}



