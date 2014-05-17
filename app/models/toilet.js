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
  sharps: attr('boolean'),
  showers: attr('boolean'),
  sanitaryDisposal: attr('boolean'),
  drinkingWater: attr('boolean'),
  geoX: attr('number'),
  geoY: attr('number')
});

Toilet.reopenClass({
  FIXTURES: [
  {
    id: "1",
    title: 'Public Toilet - Southbank Promenade (opposite Esso House)',
    accessible: true,
    male: true,
    female: true,
    unisex: true,
    babyChange: true,
    sharps: false,
    showers: false,
    sanitaryDisposal: false,
    drinkingWater: false,
    geoX: -37.8203421290366,
    geoY: 144.964219727982
  },
  {
    id: "2",
    title: 'Melbourne Central Station',
    accessible: true,
    male: true,
    female: true,
    unisex: true,
    babyChange: true,
    sharps: true,
    showers: false,
    sanitaryDisposal: false,
    drinkingWater: false,
    geoX: -37.8100,
    geoY: 144.9628
  }
]});

export default Toilet;
