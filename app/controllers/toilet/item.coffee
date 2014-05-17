ToiletItemController = Ember.ObjectController.extend

  actions:
    upvote: ->
      model = @get('model')
      model.incrementProperty('rating', 1)

    downvote: ->
      model = @get('model')
      model.decrementProperty('rating', 1)
`export default ToiletItemController`
