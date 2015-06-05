$(document).on('page:load', function() {
  window.parent.postMessage({ location: window.location.pathname }, "*");
});
