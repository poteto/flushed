ToiletNewView = Ember.View.extend

  didInsertElement: ->
    @_super()

    Em.run.next =>
      @$('#new-toilet-x').change =>
        @set('newToiletGeoX', @$('#new-toilet-x').val())
      @$('#new-toilet-y').change =>
        @set('newToiletGeoY', @$('#new-toilet-y').val())

`export default ToiletNewView`
