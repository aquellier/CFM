function autocomplete() {
  console.log('hello from autocomplete');
  const gameLocation = document.getElementById('game_location');
  if (gameLocation) {
    const place = new google.maps.places.SearchBox(gameLocation, { types: [ 'geocode' ] });
    google.maps.event.addDomListener(place, 'keydown');
  };
};


export { autocomplete };
