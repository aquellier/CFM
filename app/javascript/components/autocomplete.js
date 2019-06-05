const initAutocomplete = () => {
  const addressInput = document.getElementById('game_location') ||
                       document.getElementById('address_query');
  if (addressInput) {
    completeSearch(addressInput);
  };
};

const completeSearch = (input) => {
  const place = new google.maps.places.SearchBox(input, { types: [ 'geocode' ] });
  google.maps.event.addDomListener(place, 'keydown');
}


export { initAutocomplete };
