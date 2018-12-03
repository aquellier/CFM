// Imports
import "bootstrap";
import { navbarScroll } from '../components/navbar';
import  { initMapShow, initMapIndex } from '../components/map.js';
import { calendar } from '../components/flatpickr';
import { hideShow } from '../components/hide.js';
import { loadDynamicBannerText } from '../components/typed';
import { fadeOut, changeButton } from '../components/banner';
// Pages
const indexPage = document.querySelector('.games.index');
const showPage = document.querySelector('.games.show');

// Functions
loadDynamicBannerText();
fadeOut();
changeButton();
navbarScroll();
if (indexPage) {
  initMapIndex();
  hideShow();
}
if (showPage) {
  initMapShow();
}
calendar();
