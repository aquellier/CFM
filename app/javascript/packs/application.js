// Imports
import "bootstrap";
import { navbarScroll } from '../components/navbar';
import  { initMapShow, initMapIndex } from '../components/map.js';
import { calendar } from '../components/flatpickr';
import { loadDynamicBannerText } from '../components/typed';

// Pages
const indexPage = document.querySelector('.games.index');
const showPage = document.querySelector('.games.show');

// Functions
loadDynamicBannerText();
navbarScroll();
if (indexPage) {
  initMapIndex();
}
if (showPage) {
  initMapShow();
}
calendar();
