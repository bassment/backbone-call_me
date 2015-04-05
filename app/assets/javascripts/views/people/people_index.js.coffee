class CallMe.Views.PeopleIndex extends Backbone.View

  template: JST['people/index']
  
  events:
    'submit #new_person': 'createPerson'
    'click #call': 'selectPerson'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendPerson, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendPerson)
    this
    
  appendPerson: (person) ->
    view = new CallMe.Views.Person(model: person)
    $('#people').append(view.render().el)
    
  createPerson: (event) ->
    event.preventDefault()
    attributes = 
      name: $('#new_person_name').val(),
      phone: $('#new_person_phone').val()
    @collection.create attributes,
      wait: true
      success: -> 
        $('#new_person')[0].reset()
        $('#new_person')[1].reset()
      error: -> alert "Please fill in BOTH fields!"
      
  selectPerson: (event) ->
    event.preventDefault()
    @collection.selectPerson()