ToiletUnisexRoute = Ember.Route.extend
  model: ->
    @modelFor('toilet')

  setupController: (controller, model) ->
    filtered = model.filter (model) ->
      model.get('male') and model.get('female')

    controller.set 'model', filtered

`export default ToiletUnisexRoute`
