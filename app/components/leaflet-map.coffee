LeafletMapComponent = Ember.Component.extend
  classNames: ['leaflet-wrapper']
  map: ''
  currentLocation: [-37.82397, 144.991078]

  getCurrentLocation: ->
    return if (!navigator.geolocation)
    navigator.geolocation.getCurrentPosition (position) =>
      @set 'currentLocation', [position.coords.latitude, position.coords.longitude]

  contentDidChange: Em.observer(->
    @get('map').remove()
    @drawMapLater()
  , 'content.@each')

  locationDidChange: (->
    @get('map').setView(@get('currentLocation'), 13)
  ).observes 'currentLocation'

  didInsertElement: ->
    @_super()
    @getCurrentLocation()
    @drawMapLater()

  drawMapLater: ->
    Em.run.next =>
      @drawMap()

  drawMap: ->
    @set('map', L.map('map').setView([-37.82397, 144.991078], 13))
    map = @get('map')
    content = @get('content')

    markersGeodata = content.map (content) ->
      title: content.get('title')
      data: [content.get('geoX'), content.get('geoY')]

    markersGeodata.forEach (geodata) ->
      newMarker = L.marker(geodata.data).addTo(map)
      newMarker.bindPopup(geodata.title)

    L.tileLayer('http://{s}.tiles.mapbox.com/v3/sugarpirate.i8olh1n2/{z}/{x}/{y}.png', {
      maxZoom: 18
    }).addTo(map)

    map.on 'click', (e) ->
      lat = e.latlng.lat
      lng = e.latlng.lng

      $('#new-toilet-x')?.val(lat).change()
      $('#new-toilet-y')?.val(lng).change()
      $('#new-toilet-title')?.focus()

  willClearRender: ->
    @_super()
    @get('map').remove()

`export default LeafletMapComponent`
