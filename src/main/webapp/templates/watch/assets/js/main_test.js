const $ = document.querySelector.bind(document);
// const $$ = document.querySelectorAll.bind(document);

// toggle menu when menubar onclick
const toggleMenuBar = function (isDisplay) {
    const menuBar = $('#menu-bar');
    const menuBehavior = $('#menu-behavior');
    const container = $('#container');

    menuBar.onclick = () => {
        if (!isDisplay) {
            menuBehavior.style.display = 'block';
            container.classList.add('blur');
        } else {
            menuBehavior.style.display = 'none';
            container.classList.remove('blur');
        }
        isDisplay = !isDisplay;
    }
};

// toggle profile when avatar onlick
const toggleProfile = function (isDisplay) {
    const avatar = $('#avatar');
    const profile = $('#profile');

    avatar.onclick = () => {
        if (!isDisplay) {
            profile.style.display = 'block';
        } else {
            profile.style.display = 'none';
        }
        isDisplay = !isDisplay;
    }
};

// size of video
const video = $('#primary .video iframe');
const wVideo = parseFloat(video.getAttribute('width'));
const hVideo = parseFloat(video.getAttribute('height'));

// set width height for video player
const setSizeVideo = function () {
    const heightVideo = (video.clientWidth / wVideo) * hVideo;
    video.setAttribute('height', heightVideo + 'px');
};

// hide menu bar and more if container onlick
const hideItem = function () {
    const container = $('#container');
    container.onclick = () => {
        disableItems();
    } 
    window.onscroll = () => {
        disableItems();
    }
}

var disableItems = function() {
    const container = $('#container');
    const menuBehavior = $('#menu-behavior');
    const profile = $('#profile');
        if (menuBehavior.style.display === 'block') {
            menuBehavior.style.display = 'none';
            toggleMenuBar(false);
        }
        if (profile.style.display === 'block') {
            profile.style.display = 'none';
            toggleProfile(false);
        }
        container.classList.remove('blur');
}

toggleMenuBar(false);
toggleProfile(false);
hideItem();

// Watch

// oncomment 
const addComment = function () {
    const addComment = $('#primary .comments .add-comment input');
    const interaction = $('#primary .comments .save-comment');
    const btnCancel = $('#primary .comments .save-comment .cancel');
    const btnSave = $('#primary .comments .save-comment .save');

    var isDisplay = false;
    addComment.onclick = () => {
        if (!isDisplay) {
            interaction.style.display = 'block';
        } else {
            interaction.style.display = 'none';
        }
        isDisplay = !isDisplay;
    }

    btnCancel.onclick = () => {
        if (isDisplay) {
            interaction.style.display = 'none';
            isDisplay = false;
        }
    }

    btnSave.onclick = () => {
        if (isDisplay) {
            interaction.style.display = 'none';
            isDisplay = false;
        }
    }
}

// edit comment
const editComment = function () {
    const options = $('#primary .comments .comment .comment-content .options');
    const btnEdit = $('#primary .comments .comment .comment-content .comment-edit-delete');
    let isDisplay = false;
    options.onclick = () => {
        if (!isDisplay) {
            btnEdit.style.display = 'block';
        } else {
            btnEdit.style.display = 'none';
        }
        isDisplay = !isDisplay;
    }
}

// window onresize
window.onresize = function () {
    setSizeVideo();
}


setSizeVideo();
addComment();
editComment();