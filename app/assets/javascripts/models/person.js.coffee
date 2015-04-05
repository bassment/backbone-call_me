class CallMe.Models.Person extends Backbone.Model

  call: ->
    @set(call: true)
    @save()
    @trigger('highlight')