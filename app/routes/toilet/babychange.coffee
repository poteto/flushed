ToiletBabychangeRoute = Ember.Route.extend
  model: ->
    @modelFor('toilet')

  setupController: (controller, model) ->
    controller.set 'model', model.filterBy('babyChange', true)

`export default ToiletBabychangeRoute`
