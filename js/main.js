
console.log("JS file is connected");

(() => {


  gsap.from(".main-content", { duration: 1, x: 500, autoplay: 0, onComplete: tweenCompleted });

  function tweenCompleted() {
    console.log("The Animation is done");
  }

  gsap.from(".hero-img", { duration: 1, x: -500, autoplay: 0, onComplete: tweenCompleted });

  // video player
  document.addEventListener('DOMContentLoaded', function () {
    const videoPlayer = document.querySelector('video');
    const player = new Plyr(videoPlayer);
  });



  // animation - work page
  const animatedImages = document.querySelectorAll('.animated-img');

  function animateImages() {
    gsap.from(animatedImages, {
      duration: 1,
      opacity: 0,
      y: 50,
      stagger: 0.2,
      ease: "power2.inOut",
    });
  }

  // animation - blog page
  function animateBlogContent() {
    const blogContent = document.querySelectorAll('.blog-content > div');

    gsap.from(blogContent, {
      duration: 1,
      opacity: 0,
      y: 50,
      rotation: -30,
      stagger: 0.2,
      ease: "power2.inOut"
    });
  }

  // animation - about
  function animateParagraphs() {
    const paragraphs = document.querySelectorAll('.animate-text');

    gsap.from(paragraphs, {
      duration: 1.5,
      opacity: 0,
      y: 30,
      stagger: 0.3,
      ease: "power2.inOut"
    });
  }
  window.onload = function () {
    animateImages();
    animateBlogContent();
    animateParagraphs();
  };
})();


  // hamburger menu
  function toggleMenu() {
    const menu = document.querySelector('.menu');
    menu.classList.toggle('active');
  }


  (() => {
    const form = document.querySelector("#contactForm");
    const feedBack = document.querySelector("#feedback");

    function regForm(event) {
        event.preventDefault();
        const thisform = event.currentTarget;
        const url = "adduser.php";
        console.log(thisform.elements.fname.value)
        const formdata =
            "&name=" + thisform.elements.name.value +
            "&email=" + thisform.elements.email.value +
            "&phoneNumber=" + thisform.phoneNumber.email.value +
            "&message=" + thisform.message.message.value;
        console.log(formdata);

        fetch(url, {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: formdata
        })
            .then(response => response.json())
            .then(responseText => {
                console.log(responseText);
                feedBack.innerHTML = ''
                if (responseText.errors) {
                    responseText.errors.forEach(error => {
                        const errorElement = document.createElement("p");
                        errorElement.textContent = error;
                        feedBack.appendChild(errorElement)
                    });
                } else {
                    form.reset();
                    const messageElement = document.createElement("p");
                    messageElement.textContent = responseText.message;
                    feedBack.appendChild(messageElement)
                }
            })
            .catch(error => {
                console.log(error);
                const messageElement = document.createElement("p");
                messageElement.textContent = "Whoops, it looks like your either using an older browser or not connected to the internet or our server is having issues. Sorry about that!";
                feedBack.appendChild(messageElement);
            });
    }

    form.addEventListener("submit", regForm)
})();
