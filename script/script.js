function iframeFullScreen(){
    const iframeContainer = document.getElementById("iframeVideo")[0];
    const iframeVideo = document.getElementsByClassName('iframe')[0];

    iframeContainer.style.margin = "-20px";
    iframeVideo.style.width = "80%";
}

const buttonIframeExpansion = document.querySelector(".buttonIframeExpansion");
if(buttonIframeExpansion){
    buttonIframeExpansion.addEventListener('click', iframeFullScreen);
}
