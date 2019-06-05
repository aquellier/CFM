// Imports
import "bootstrap";
import './application.css';
import { navbarScroll } from '../components/navbar';
import { initMapShow, initMapIndex } from '../components/map.js';
import { calendar } from '../components/flatpickr';
import { hideShow } from '../components/hide.js';
import { loadDynamicBannerText } from '../components/typed';
import { fadeOut, changeButton } from '../components/banner';
import { hideOnSmallScreen } from '../components/smallscreen';
import { initAutocomplete } from '../components/autocomplete';
// Pages
const indexPage = document.querySelector('.games.index');
const showPage = document.querySelector('.games.show');

// Calling Functions
loadDynamicBannerText();
fadeOut();
changeButton();
navbarScroll();
if (indexPage) {
  initMapIndex();
  hideShow();
  hideOnSmallScreen();
}
if (showPage) {
  initMapShow();
}
calendar();
initAutocomplete();
