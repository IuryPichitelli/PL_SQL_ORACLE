function iframeFullScreen(){
    const iframeContainer = document.getElementsByClassName("iframeVideo");
    const iframeVideo = document.getElementsByTagName('iframe');

    iframeContainer.style.margin = "-20px";
    iframeVideo.style.borderRadius = "0px";
}

const buttonIframeExpansion = document.getElementsByClassName("buttonIframeExpansion");

buttonIframeExpansion.EventeListener('click', function(){
    iframeFullScreen();
});