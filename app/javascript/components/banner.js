import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Play football in Lisbon", "Anytime", "Anywhere"],
    typeSpeed: 30,
    loop: true
  });
}

export { loadDynamicBannerText };
