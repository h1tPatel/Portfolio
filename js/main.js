console.log("JS file is connected");



(() => {

    
    gsap.from(".main-content", {duration: 1, x:500, autoplay:0, onComplete: tweenCompleted});
  
    function tweenCompleted(){
      console.log("The Animation is done");
    }

    gsap.from(".hero-img", {duration: 1, x:-500, autoplay:0, onComplete: tweenCompleted});


  // video player
  document.addEventListener('DOMContentLoaded', function () {
    const videoPlayer = document.querySelector('video');
    const player = new Plyr(videoPlayer);
 });


  //hamburger menu
  function toggleMenu() {
    const menu = document.querySelector('.menu');
    menu.classList.toggle('active');
  }

  

  })();


