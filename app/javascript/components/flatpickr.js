import flatpickr from 'flatpickr';
const calendar = () => {
  flatpickr('#game_datetime', {
    minDate: "today",
    enableTime: true,
    dateFormat: "F, d Y, H:i"
  });
}
export { calendar };
