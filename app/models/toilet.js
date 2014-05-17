var attr = DS.attr,
    hasMany = DS.hasMany,
    belongsTo = DS.belongsTo;

var Toilet = DS.Model.extend({
  title: attr('string'),
  accessible: attr('boolean'),
  male: attr('boolean'),
  female: attr('boolean'),
  unisex: attr('boolean'),
  babyChange: attr('boolean'),
  ratings: hasMany('rating'),

});

Toilet.reopenClass({
  FIXTURES: [
  {
    id: "1",
    title: 'install EAK',
    accessible: true
  }, {
    id: "2",
    title: 'install additional dependencies',
    accessible: true
  }, {
    id: "3",
    title: 'develop amazing things',
    accessible: false
  }
]});

export default Toilet;
