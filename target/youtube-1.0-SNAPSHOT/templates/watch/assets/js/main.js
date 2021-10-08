
// set width height for video player
const setSizeVideo = function() {
    const video = $('#primary .video iframe');
    const w = parseFloat(video.getAttribute('width'));
    const h = parseFloat(video.getAttribute('height'));
    const heightVideo = (video.clientWidth / w) * h;
    video.setAttribute('height', heightVideo + 'px');
};

// window onresize
window.onresize = function() {
    setSizeVideo();
}

setSizeVideo();
// setAutoPlayVideo();