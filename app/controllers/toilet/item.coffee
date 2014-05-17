ToiletItemController = Ember.ObjectController.extend

  actions:
    upvote: ->
      model = @get('model')
      model.incrementProperty('rating', 1)
      model.save()
      .then ->
        toastr.success "Upvoted!"

    downvote: ->
      model = @get('model')
      model.decrementProperty('rating', 1)
      model.save()
      .then ->
        toastr.warning "Downvoted!"

`export default ToiletItemController`
