export default Ember.Handlebars.makeBoundHelper(function(length, singular) {
  var plural, sentence;
  plural = Ember.String.pluralize(singular);
  switch (false) {
    case length !== 0:
      sentence = "No " + plural;
      break;
    case length !== 1:
      sentence = "" + length + " " + singular;
      break;
    case !(length > 1):
      sentence = "" + length + " " + plural;
  }
  return new Handlebars.SafeString(sentence);
});




