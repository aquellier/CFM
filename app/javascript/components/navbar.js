function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-cfm');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-cfm-white');
      } else {
        navbar.classList.remove('navbar-cfm-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
