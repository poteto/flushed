Review = DS.Model.extend
  user: DS.attr('string')
  text: DS.attr('string')
  toilet: DS.belongsTo('toilet')
  createdAt: DS.attr('date')

Review.reopenClass
  FIXTURES: [
    {
      id: '1'
      user: 'Lauren Tan'
      toilet: 1
      createdAt: new Date(2014, 4, 18)
      text: 'Avoid the last cubicle on the right, the flush never works!'
    },
    {
      id: '2'
      user: 'Eamon Mitchell'
      toilet: 11
      createdAt: new Date(2014, 4, 21)
      text: '0403 569 031 for gdood time'
    }
  ]

`export default Review`
