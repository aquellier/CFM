import flatpickr from 'flatpickr';
function calendar() {
  flatpickr('#basicDate', {
    enableTime: true,
    dateFormat: "F, d Y H:i"
  });
}
export { calendar };
