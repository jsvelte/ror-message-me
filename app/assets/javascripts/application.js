//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require semantic-ui
//= require_tree .

$(document).on("turbolinks:load", function () {
  $(".menu a").removeClass("active");
  $(".ui.dropdown").dropdown();
});

$(".message .close").on("click", function () {
  $(this).closest(".message").transition("fade");
});
