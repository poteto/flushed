LeafletMapComponent = Ember.Component.extend
  classNames: ['leaflet-wrapper']
  map: ''

  didInsertElement: ->
    @_super()
    @set('map', L.map('map').setView([-37.81, 144.97], 13))
    map = @get('map')

    L.tileLayer('http://{s}.tiles.mapbox.com/v3/sugarpirate.i8olh1n2/{z}/{x}/{y}.png', {
      maxZoom: 18
    }).addTo(map)

    marker = L.marker([-37.8203421290366,144.964219727982]).addTo(map)
    marker.bindPopup('Public Toilet - Southbank Promenade (opposite Esso House)').openPopup()

`export default LeafletMapComponent`
