const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

// toggle menu when menubar onclick
var toggleMenuBar = function() {

    const menuBar = $('#menu-bar');
    //const container = $('#container');
    var isDisplay = false;
    
    menuBar.onclick = () => {
        var menuBehavior = $('#menu-behavior');
        if (!isDisplay) {
            menuBehavior.style.display = 'block';
            //container.classList.add('blur');
        } else {
            menuBehavior.style.display = 'none';
            //container.classList.remove('blur');
        }
        isDisplay = !isDisplay;
    }
}

// toggle profile when avatar onlick
var toggleProfile = function() {

    const avatar = $('#avatar');
    var isDisplay = false;
    
    avatar.onclick = () => {
        var profile = $('#profile');
        if (!isDisplay) {
            profile.style.display = 'block';
        } else {
            profile.style.display = 'none';
        }
        isDisplay = !isDisplay;
    }
}

// undisplay toggel all when window onclick
var windowOnClick = function() {

}

// window onresize
window.onresize = function() {
    setSizeVideo();
}

// set width height for video player
var setSizeVideo = function() {
    const video = $('#primary .video iframe');
    const w = parseFloat(video.getAttribute('width'));
    const h = parseFloat(video.getAttribute('height'));
    video.setAttribute('height', parseFloat(video.clientWidth / w) * h + 'px');
}

toggleMenuBar();
toggleProfile();
windowOnClick();
setSizeVideo();