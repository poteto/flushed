ToiletShowController = Ember.ObjectController.extend
  reviewSorting: ['createdAt:desc']
  reviews: Ember.computed.sort 'content.reviews', 'reviewSorting'

  actions:
    post: ->
      user = @get('review-user')
      text = @get('review-text')
      date = new Date()
      toilet = @get('model')

      return unless user and text

      newReview = @store.createRecord 'review', {
        user: user
        text: text
        createdAt: date
        toilet: toilet
      }

      newReview.save().then (review) ->
        toilet.get('reviews').pushObject review
        toastr.success "Review posted"

      @set('review-user', '')
      @set('review-text', '')

`export default ToiletShowController`
