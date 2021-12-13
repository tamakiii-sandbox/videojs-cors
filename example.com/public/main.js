document.addEventListener('DOMContentLoaded', (event) => {
  const video = document.querySelector('video');
  const player = videojs(video);
  console.log(player);

  const canvas = document.getElementById('canvas');
  canvas.width = 1280;
  canvas.height = 720;

  const button = document.getElementById('toBlob');
  button.addEventListener('click', (event) => {
    const ctx = canvas.getContext('2d');
    ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
    canvas.toBlob(blob => {
      console.log(blob);
    });
  });
});
