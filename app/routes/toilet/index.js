var ToiletIndexRoute = Ember.Route.extend({
  model: function(){
    return this.modelFor('toilet');
  },

  setupController: function(controller, model) {
    return controller.set('model', model);
  }
});

export default ToiletIndexRoute;
