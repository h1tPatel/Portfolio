console.log("JS file is connected");



(() => {

    
    gsap.from(".main-content", {duration: 1, x:500, autoplay:0, onComplete: tweenCompleted});
  
    function tweenCompleted(){
      console.log("The Animation is done");
    }

    gsap.from(".hero-img", {duration: 1, x:-500, autoplay:0, onComplete: tweenCompleted});
  

  })();
