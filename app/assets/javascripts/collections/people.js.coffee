class CallMe.Collections.People extends Backbone.Collection
  url: '/api/people'
  model: CallMe.Models.Person

  selectPerson: ->
    call_person = @shuffle()[0]
    call_person.call()