ToiletNewController = Ember.Controller.extend

  actions:
    saveToilet: ->
      title = @get('newToiletTitle')
      geoX = @get('newToiletGeoX')
      geoY = @get('newToiletGeoY')
      male = @getWithDefault('newToiletMale', false)
      female = @getWithDefault('newToiletFemale', false)
      babychange = @getWithDefault('newToiletBabychange', false)
      sharps = @getWithDefault('newToiletSharps', false)
      showers = @getWithDefault('newToiletShowers', false)
      sanitary = @getWithDefault('newToiletSanitary', false)

      newToilet = @store.createRecord 'toilet', {
        title: title
        geoX: geoX
        geoY: geoY
        male: male
        female: female
        babyChange: babychange
        sharps: sharps
        showers: showers
        sanitary: sanitary
      }

      newToilet.save()
      .then =>
        toastr.success 'Saved'
        @transitionTo 'toilet.index'

`export default ToiletNewController`
