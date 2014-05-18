ToiletIndexRoute = Ember.Route.extend
  model: ->
    @modelFor('toilet')

  setupController: (controller, model) ->
    controller.set 'model', model.filterBy('accessible', true)

`export default ToiletIndexRoute`
