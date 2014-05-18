var ToiletShowRoute = Ember.Route.extend({
  model: function(params) {
    var store = this.get('store');
    return this.store.find('toilet', params.toilet_id);
  },

  afterModel: function(model) {
    return Em.RSVP.all([
      model.get('reviews')
    ]);
  },

  setupController: function(controller, model) {
    return controller.set('model', model);
  }
});

export default ToiletShowRoute;
