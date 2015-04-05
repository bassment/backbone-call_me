class CallMe.Routers.People extends Backbone.Router

  routes:
    '': 'index'
  
  initialize: ->
    @collection = new CallMe.Collections.People()
    @collection.fetch( {reset: true} )
  
  index: ->
    view = new CallMe.Views.PeopleIndex(collection: @collection)
    $('#container').html(view.render().el)