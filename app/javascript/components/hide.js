function hideShow() {
  const mapIndex = document.getElementById('map-index');
  const mapIndexContainer = document.getElementById('map-index-container');
  const button = document.getElementById('show-map');
  const gamesContainer = document.getElementById('games-container');
  if (mapIndex) {
    console.log('hello from hide');
    window.isMapOpen = true;
    const hideElement = (element) => {
      if (element.style.display === "none") {
        element.style.display = "block";
        window.isMapOpen = true;
      } else {
        element.style.display = "none";
        window.isMapOpen = false;
      }
    }

    button.addEventListener('click', (event) => {
    const cards = document.querySelectorAll('.card');
      hideElement(mapIndex);
      hideElement(mapIndexContainer);
      gamesContainer.classList.toggle('full-games-container');
    });
  }
}

export { hideShow }

