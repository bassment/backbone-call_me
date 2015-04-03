class CallMe.Routers.People extends Backbone.Router

  routes:
    '': 'index'
  
  initialize: ->
    @collection = new CallMe.Collections.People()
  
  index: ->
    view = new CallMe.Views.PeopleIndex()
    $('#container').html(view.render().el)