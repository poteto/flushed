LeafletMapComponent = Ember.Component.extend
  classNames: ['leaflet-wrapper']
  map: ''

  contentDidChange: Em.observer(->
    this.get('map').remove()
    @drawMapLater()
  , 'content.@each')

  didInsertElement: ->
    @_super()
    @drawMapLater()

  drawMapLater: ->
    Em.run.next =>
      @drawMap()

  drawMap: ->
    @set('map', L.map('map').setView([-37.81, 144.97], 13))
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

    map.on 'click', (e) =>
      lat = e.latlng.lat
      lng = e.latlng.lng

      $('#new-toilet-x')?.val(lat)
      $('#new-toilet-y')?.val(lng)

  willClearRender: ->
    @_super()
    this.get('map').remove()

`export default LeafletMapComponent`
