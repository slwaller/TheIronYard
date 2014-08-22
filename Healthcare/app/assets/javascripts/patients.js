$(document).ready(function() {


$(".notice").fadeOut(2000);

$(".notice").on( function() {
    $(".notice").fadeOut(2000);
})

$("form > input").keyup( function() {
    if ($(this).val() == "") {
      $(".submit_btn").attr("disabled", "disabled")}
    else{
      $(".submit_btn").removeAttr("disabled")
  }
})

$(".get_patients").click( function() {
  $.ajax({
    url: "/hospitals/ajax/patients",
    type: "GET",
    dataType: "script"
  })
})



$(".search_patients").click( function() {
  console.log($('.patient_search').val())
  $.ajax({
    url: "/patients",
    dataType: "script",
    type: "GET",
    data: {q: $('.patient_search').val()}
  })
})

$(".page_num").click(function() {
    var page_num = $(this).html()
    console.log(page_num)
    $(".patient_page").addClass("hidden")
    $(".group_" + page_num).removeClass("hidden")
})



})