$(document).ready(function(){
  setListeners()
  getWeather()
});

function setListeners() {
  $('a[href^="#"]').on('click', smoothScroll)
}

function smoothScroll(e) {
  e.preventDefault();

  var target = this.hash,
  $target = $(target);

  $('html, body').stop().animate({
      'scrollTop': $target.offset().top - 36
  }, 900, 'swing', function () {
      // window.location.hash = target;
  });
}

function getWeather() {
  var ajaxRequest = $.ajax({
    url: "/weather_conditions",
    type: "GET"
  })

  ajaxRequest.done(weatherReceived)
}

function weatherReceived(response) {
  $('#weather').append(response)
}