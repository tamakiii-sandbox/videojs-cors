import videojs from 'video.js';
import 'video.js/dist/video-js.min.css'

document.addEventListener('DOMContentLoaded', (event) => {
    const video = document.querySelector('video');
    const player = videojs(video);
    console.log(player);
});
