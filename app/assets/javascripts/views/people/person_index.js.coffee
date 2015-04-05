class CallMe.Views.Person extends Backbone.View

  template: JST['people/person']
  tagName: 'tr'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightCall, this)

  render: ->
    $(@el).html(@template(person: @model))
    this
    
  highlightCall: ->
    $('.call_me').removeClass('highlight')
    @$('.call_me').addClass('highlight')