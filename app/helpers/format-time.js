export default Ember.Handlebars.makeBoundHelper(function(date) {
  return new Handlebars.SafeString(moment(date).fromNow());
});

