class CallMe.Views.Person extends Backbone.View

  template: JST['people/person']
  tagName: 'tr'

  render: ->
    $(@el).html(@template(person: @model))
    this