var attr = DS.attr,
    hasMany = DS.hasMany,
    belongsTo = DS.belongsTo;

var Rating = DS.Model.extend({
  value: attr('number'),
  toilets: belongsTo('toilet')
});

export default Rating;
