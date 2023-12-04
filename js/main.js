console.log("JS file is connected");



(() => {

    
    gsap.from(".main-content", {duration: 1, x:500, autoplay:0, onComplete: tweenCompleted});
  
    function tweenCompleted(){
      console.log("The Tween Completed/Animation is done");
    }

    gsap.from(".hero-img", {duration: 1, x:-500, autoplay:0, onComplete: tweenCompleted});
  
    function tweenCompleted(){
      console.log("The Tween Completed/Animation is done");
    }
  })();


      function toggleMenu() {
        const menu = document.querySelector('.menu');
        menu.classList.toggle('active');
    }


    // document.addEventListener("DOMContentLoaded", function() {
    //     const text = document.querySelector(".main-content h1").textContent;
    //     document.querySelector(".main-content h1").textContent = '';
    
    //     let index = 0;
    
    //     function typeEffect() {
    //         if (index < text.length) {
    //             document.querySelector(".main-content h1").textContent += text.charAt(index);
    //             index++;
    //             setTimeout(typeEffect, 100); 
    //         }
    //     }
    
    //     gsap.delayedCall(0.8, typeEffect);
    // });

    
    
