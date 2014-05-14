window.BackboneDemo = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    
    BackboneDemo.posts = new BackboneDemo.Collections.Posts();
    var $rootEl = $('#content')
    
  }
};

$(document).ready(function(){
  BackboneDemo.initialize();
});
