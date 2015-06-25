$(document).on('page:load', function() {
  window.parent.postMessage({ location: window.location.pathname }, "*");
});

$(function(){
  var body_width = $('body')[0].scrollWidth;
  window.parent.postMessage({ width: body_width }, "*");
});
