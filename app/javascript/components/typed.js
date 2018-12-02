import Typed from 'typed.js';

function loadDynamicBannerText() {
  const typedBanner = document.getElementById('js-typed-text');
  if (typedBanner) {
    console.log('hello from typed');
    new Typed(typedBanner, {
      strings: ["anytime", "anywhere"],
      typeSpeed: 100,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
