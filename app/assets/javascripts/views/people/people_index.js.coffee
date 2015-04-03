class CallMe.Views.PeopleIndex extends Backbone.View

  template: JST['people/index']

  render: ->
    $(@el).html(@template())
    this