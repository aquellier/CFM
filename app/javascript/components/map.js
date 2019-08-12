import GMaps from 'gmaps/gmaps.js';
import styles from './styles.js';

const addMarkers = (map, markers) => {
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

const addStyle = (map) => {
  map.addStyle({
    styles: styles,
    mapTypeId: 'map_style'
  });
  map.setStyle('map_style');
}


const initMapShow = () => {
  const mapShow = document.getElementById('map-show');
  if (mapShow) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map-show', lat: 0, lng: 0 });
    const markers = JSON.parse(mapShow.dataset.markers);
    addMarkers(map, markers);
    addStyle(map);
  }
}

const initMapIndex = () => {
  const mapIndex = document.getElementById('map-index');
  if (mapIndex) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map-index', lat: 0, lng: 0 });
    const markers = JSON.parse(mapIndex.dataset.markers);
    addMarkers(map, markers);
    addStyle(map);
    const updateMarkers = (markersData) => {
      map.removeMarkers(markers);
      addMarkers(map, markersData);
      console.log(markersData);
    }
    window.updateMarkers = updateMarkers;
  }
}



export { initMapShow, initMapIndex };
