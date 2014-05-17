var ToiletRoute = Ember.Route.extend({
  model: function(){
    var store = this.get('store');
    return this.store.find('toilet');
  }
});

export default ToiletRoute;
