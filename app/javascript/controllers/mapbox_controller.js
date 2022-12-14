import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"


export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      // style: "mapbox://styles/mapbox/satellite-v9"
      style: "mapbox://styles/mapbox/streets-v11", // style
      center: [-9.1350899566626, 38.70956997955441], // starting position [lng, lat]
      zoom: 5 // starting zoom
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
       mapboxgl: mapboxgl }))
  }
  #addMarkersToMap() {

    this.markersValue.forEach((marker) => {

       const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      //  new mapboxgl.Marker()
      //   .setLngLat([ marker.lng, marker.lat ])
      //   .setPopup(popup)
      //   .addTo(this.map)

      // VERY IMPORTANT
      //when we decide we want to create avatars to our experiences

      // Create a HTML element for your custom marker

      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.background = `url('${marker.avatar_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.borderRadius = "50%"
      customMarker.style.width = "40px"
      customMarker.style.height = "40px"

  // Pass the element as an argument to the new marker

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)
    });
  }
  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
