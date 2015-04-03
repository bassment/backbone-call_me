window.CallMe =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new CallMe.Routers.People()
    Backbone.history.start()

$(document).ready ->
  CallMe.initialize()
