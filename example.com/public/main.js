document.addEventListener('DOMContentLoaded', (event) => {
  const video = document.querySelector('video');
  const player = videojs(video);
  console.log(player);
});
