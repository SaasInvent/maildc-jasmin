Backbone.pubSub = _.extend({}, Backbone.Events)

window.location.hash = '/home'
window.App =
  Models: {}
  Collections: {}
  Views: {}

# starting router and routing history (Express 3 only)
#@appRouter = new AppRouter()
Backbone.history.stop()
Backbone.history.start()


# Backbone start page
$ ->
  topMenuView = new App.Views.TopMenuView()

  console.log "Backbone kick-off!."
