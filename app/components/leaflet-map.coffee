LeafletMapComponent = Ember.Component.extend
  classNames: ['leaflet-wrapper']
  map: ''
  currentLocation: []

  getCurrentLocation: ->
    return if (!navigator.geolocation)
    navigator.geolocation.getCurrentPosition (position) =>
      @set 'currentLocation', [position.coords.latitude, position.coords.longitude]

  contentDidChange: Em.observer(->
    this.get('map').remove()
    @drawMapLater()
  , 'content.@each')

  locationDidChange: Em.observer(->
    @getCurrentLocation()
    @drawMapLater()
  , 'currentLocation')

  didInsertElement: ->
    @_super()
    @getCurrentLocation()
    @drawMapLater()

  drawMapLater: ->
    Em.run.later this, (->
      @drawMap()
    ), 1000

  drawMap: ->
    current = @getWithDefault 'currentLocation', [-37.814107, 144.96328]
    @set('map', L.map('map').setView(current, 13))
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
