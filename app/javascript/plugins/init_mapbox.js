import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

const initMapbox = () => {
  const mapElement = document.querySelector("#map");

  if (mapElement) {
    // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const marker = JSON.parse(mapElement.dataset.marker);

    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/olympact/ckllihycu2dj518nya3bkz6hl",
      center: [marker.lng, marker.lat],
      zoom: 10,
      attributionControl: false,
    });

    new mapboxgl.Marker({ color: "#cc1e66" })
      .setLngLat([marker.lng, marker.lat])
      .addTo(map);
  }
};

export { initMapbox };
