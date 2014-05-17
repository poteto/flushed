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
    geoX: -37.8100,
    geoY: 144.9628
  },
  {
    id: "3",
    title: 'Public Toilet - Flinders Street Station',
    accessible: true,
    male: true,
    female: true,
    unisex: true,
    babyChange: false,
    sharps: true,
    showers: false,
    sanitaryDisposal: true,
    drinkingWater: false,
    geoX: -37.817792,
    geoY: 144.96722917
  },
  {
    id: "4",
    title: 'Public Toilet - Lonsdale Street (Opposite 88 Lonsdale Street)',
    accessible: true,
    male: true,
    female: true,
    unisex: false,
    babyChange: false,
    sharps: false,
    showers: false,
    sanitaryDisposal: false,
    drinkingWater: false,
    geoX: -37.8100356799286,
    geoY: 144.969902463305
  },
  {
    id: "5",
    title: 'Public Toilet - Flagstaff Gardens (cnr William & Dudley)',
    accessible: true,
    male: true,
    female: true,
    unisex: true,
    babyChange: false,
    sharps: false,
    showers: false,
    sanitaryDisposal: false,
    drinkingWater: false,
    geoX: -37.8089204751149,
    geoY: 144.955043308784
  },
  {
    id: "6",
    title: 'Public Toilet - Saint Mangos Lane, The Palladio (New Quay)',
    accessible: true,
    male: true,
    female: true,
    unisex: false,
    babyChange: false,
    sharps: false,
    showers: false,
    sanitaryDisposal: false,
    drinkingWater: false,
    geoX: -37.814358311416,
    geoY: 144.941682166969
  }
]});

export default Toilet;
