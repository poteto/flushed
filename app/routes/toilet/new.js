var ToiletNewRoute = Ember.Route.extend({
  model: function(params) {
    var store = this.get('store');
    return this.store.find('toilet');
  },

  setupController: function(controller, model) {
    return controller.set('model', model);
  }
});

export default ToiletNewRoute;
