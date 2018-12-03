function fadeOut() {
  console.log('hello from fadeOut');
  const bannerContent = document.querySelector('.banner-content');
  let opacity = 1 - (scrollY/300);
  if (opacity >= 0) {
      $(bannerContent).css('opacity', opacity);
  }
}

export { fadeOut };
