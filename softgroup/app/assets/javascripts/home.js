$(document).ready(function(){
  $("body").on("click", "h1", function(){
    alert("CLICKED");
  });
  $("body").on("click", "#list_toggle", function(e){
    list = $('.user_list');
    list.slideToggle();
    text = $(e.target).text();
    text = text === "Hide" ? "Show" : "Hide";
    $(e.target).text(text);

    return false;
  });
});
