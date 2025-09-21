/*function iframeFullScreen(){
    const iframeContainer = document.getElementById("iframeVideo")[0];
    const iframeVideo = document.getElementsByClassName('iframe')[0];

    iframeContainer.style.margin = "-20px";
    iframeVideo.style.width = "80%";
}

const buttonIframeExpansion = document.querySelector(".buttonIframeExpansion");
if(buttonIframeExpansion){
    buttonIframeExpansion.addEventListener('click', iframeFullScreen);
}*/


const track = document.querySelector('.carousel');
    const slides = Array.from(track.children);
    const nextBtn = document.querySelector('.next');
    const prevBtn = document.querySelector('.prev');
    let index = 0;

    function updateCarousel() {
      track.style.transform = `translateX(${-index * 920}px)`;
    }

    nextBtn.addEventListener('click', () => {
      index = (index + 1) % slides.length;
      updateCarousel();
    });

    prevBtn.addEventListener('click', () => {
      index = (index - 1 + slides.length) % slides.length;
      updateCarousel();
    });