const $ = document.querySelector.bind(document);
// const $$ = document.querySelectorAll.bind(document);

// toggle menu when menubar onclick
const toggleMenuBar = function () {

    const menuBar = $('#menu-bar');
    //const container = $('#container');
    let isDisplay = false;

    menuBar.onclick = () => {
        const menuBehavior = $('#menu-behavior');
        if (!isDisplay) {
            menuBehavior.style.display = 'block';
            //container.classList.add('blur');
        } else {
            menuBehavior.style.display = 'none';
            //container.classList.remove('blur');
        }
        isDisplay = !isDisplay;
    }
};

// toggle profile when avatar onlick
const toggleProfile = function () {

    const avatar = $('#avatar');
    let isDisplay = false;

    avatar.onclick = () => {
        const profile = $('#profile');
        if (!isDisplay) {
            profile.style.display = 'block';
        } else {
            profile.style.display = 'none';
        }
        isDisplay = !isDisplay;
    }
};

// undisplay toggel all when window onclick
const windowOnClick = function () {

};

// window onresize
window.onresize = function() {

}

toggleMenuBar();
toggleProfile();
windowOnClick();