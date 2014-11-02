Backbone.pubSub = _.extend({}, Backbone.Events);

window.location.hash = '/home';

window.App = {
  Models: {},
  Collections: {},
  Views: {}
};

Backbone.history.stop();

Backbone.history.start();

$(function() {
  var topMenuView;
  topMenuView = new App.Views.TopMenuView();
  return console.log("Backbone kick-off!.");
});
