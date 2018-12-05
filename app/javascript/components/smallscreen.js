function hideOnSmallScreen() {
  console.log('hello from hideSmall');
  const mapIndex = document.getElementById('map-index');
  const mapIndexContainer = document.getElementById('map-index-container');
  const gamesContainer = document.querySelector('.games-container');
  const gamesNav = document.querySelector('.games-nav');
  window.addEventListener('resize', () => {
    if (window.innerWidth < 880) {
        console.log('Im small');
        mapIndexContainer.style.display = "none";
        gamesContainer.classList.remove('games-container');
        gamesContainer.classList.add('full-games-container');
        gamesNav.classList.add('hidden');
      } else {
        mapIndexContainer.style.display = "block";
        gamesContainer.classList.remove('full-games-container');
        gamesContainer.classList.add('games-container');
        gamesNav.classList.remove('hidden');
      }
  });
}

export { hideOnSmallScreen }
