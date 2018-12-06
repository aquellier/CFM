function autocomplete() {
  console.log('hello from autocomplete');
  const gameLocation = document.getElementById('game_location');
  if (gameLocation) {
    const autocomplete = new google.maps.places.Autocomplete(gameLocation, { types: [ 'geocode' ], componentRestrictions: {country: 'fr'} });
    google.maps.event.addDomListener(autocomplete, 'keydown');
  };
};


export { autocomplete };
