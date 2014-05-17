var Router = Ember.Router.extend(); // ensure we don't share routes between all Router instances

Router.map(function() {
  this.resource('toilet', { path: '/toilets' }, function() {
    this.route('show', { path: ':toilet_id' });
    this.route('new');
  });
});

export default Router;
