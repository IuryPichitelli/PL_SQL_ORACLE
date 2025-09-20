function iframeFullScreen(){
    const iframeContainer = document.querySelector(".iframeVideo")[0];
    const iframeVideo = document.getElementsByTagName('iframe')[0];

    iframeContainer.style.margin = "-20px";
    iframeVideo.style.borderRadius = "0px";
}

const buttonIframeExpansion = document.querySelector(".buttonIframeExpansion");
if(buttonIframeExpansion){
    buttonIframeExpansion.addEventListener('click', iframeFullScreen);
}
