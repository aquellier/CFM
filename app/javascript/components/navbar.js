function navbarScroll() {
  const navbar = document.querySelector('.navbar-cfm-transparent');
  if (navbar) {
    console.log('hello from navabr.js');
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight/2) {
        navbar.classList.remove('navbar-cfm-transparent');
        navbar.classList.add('navbar-cfm-filled');
      } else {
        navbar.classList.remove('navbar-cfm-filled');
        navbar.classList.add('navbar-cfm-transparent');
      }
    });
  }
}

export { navbarScroll };
