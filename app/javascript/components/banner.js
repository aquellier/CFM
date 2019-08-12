const fadeOut = () => {
  console.log('hello from fadeOut');
  const bannerContent = document.querySelector('.banner-content');
  let opacity = 1 - (scrollY/300);
  if (opacity >= 0) {
      $(bannerContent).css('opacity', opacity);
  }
}

const changeButton = () => {
  console.log('hello from changebutton');
  const button = document.querySelector('.white-button');
  if (button) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight*2-50) {
        button.classList.remove('white-button');
        button.classList.add('brownie-button');
      } else {
        button.classList.remove('brownie-button');
        button.classList.add('white-button');
      }
    });
  }
}

export { fadeOut, changeButton }
