// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require turbolinks
//= require_tree .

$(function() {
  initPage();
});
$(window).bind('page:change', function() {
  initPage();
});
function initPage() {
  myFunction();
  bill();
}

// $(document).ready(function(){
//   myFunction();
//   bill();
// })
var myVar;
function myFunction() {
    myVar = setInterval(init, 3000);
}


  function init(){
    var $orderRow = $('#order-time');
    $orderRow.children('tr').each(function(){
        var $row = $(this);
        var time = $row.data("timer");

        if (time < 3){
          $row.css('background-color', 'green');
        } else if (time >= 9){
          $row.css('background-color', 'red');
        } else if (time >= 6){
          $row.css('background-color', 'orange');
        } else if (time >= 3){
          $row.css('background-color', 'yellow');
        }
  });
}

function bill(){
  $('#euro').click(function(){
    $('#euro').hide();
    $('#us').show();
    $('.dollar').html('€')
    $('.price').each(function(){
      var $val = $(this).text();
      $(this).html(($val*0.91).toFixed(2))
    })
  })

  $('#us').click(function(){
    location.reload();
  })
}
