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
var clickSubscribebButton =function(){
    const btnSub= $('subscribeb')

    btnSub.onclick= () =>{
        btnSub.css("background-color" , "green");
    }
}
// undisplay toggel all when window onclick
var windowOnClick = function() {

}

toggleMenuBar();
toggleProfile();
windowOnClick();
clickSubscribebButton();
$(document).ready(function(){
     clickSubscribebButton();
   
})
