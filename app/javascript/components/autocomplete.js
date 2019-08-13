const initAutocomplete = () => {
  const addressInput = document.getElementById('game_location') ||
                       document.getElementById('address_query');
  const modalAddressInput = document.getElementById('field_location');
  if (addressInput) { completeSearch(addressInput)}
  if (modalAddressInput) { completeSearch(modalAddressInput)}
};

const completeSearch = (input) => {
  const place = new google.maps.places.SearchBox(input, { types: [ 'geocode' ] });
  google.maps.event.addDomListener(place, 'keydown');
}


export { initAutocomplete };
