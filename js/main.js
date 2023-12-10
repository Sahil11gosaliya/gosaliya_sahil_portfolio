(() => {
  console.log("IIFE Fired");

  // Ham Menu
  const hamMenu = document.querySelector('.ham');
  const hamIconOpen = document.querySelector('.menu-open');
  const hamIconClose = document.querySelector('.menu-close');

  hamMenu.style.display = 'none';

  hamIconOpen.addEventListener('click', function () {
    hamMenu.style.display = 'block';
  });

  hamIconClose.addEventListener('click', function () {
    hamMenu.style.display = 'none';
  });


  //video

  document.addEventListener('DOMContentLoaded', () => {
    const player = new Plyr('#plyr-video', {
      controls: ['play-large', 'play', 'progress', 'current-time', 'mute', 'volume', 'fullscreen'],
      tooltips: { controls: true, seek: true },
      keyboard: { focused: true, global: true },
      iconUrl: 'https://cdn.plyr.io/3.6.2/plyr.svg',
    });
  });



  document.addEventListener("DOMContentLoaded", () => {
    const sectionText = document.querySelector(".front .text");

    // SplitText
    const split = new SplitType(sectionText, { types: "words,chars", charsClass: "char", wordsClass: "word" });


    gsap.from(split.chars, {
      opacity: 0,
      y: 20,
      stagger: {
        amount: 0.5,
        grid: [split.lines.length, split.chars.length / split.lines.length],
        from: "random",
        ease: "power2.out",
      },
      duration: 1,
      scrollTrigger: {
        trigger: sectionText,
        start: "top 80%",
      },
    });
  });

  // wand
  document.addEventListener("DOMContentLoaded", () => {
    const wandElements = document.querySelectorAll(".wand");

    wandElements.forEach((wand) => {

      const tl = gsap.timeline({ defaults: { ease: "power2.out" }, repeat: -1 });


      tl.set(wand, { opacity: 1, filter: "drop-shadow(10px 0 10px rgba(255, 255, 255, 0))" });


      tl.to(wand, { filter: "drop-shadow(20px 0 20px rgba(255, 255, 255, 0.5))", duration: 0.5 })
        .to(wand, { filter: "drop-shadow(10px 0 10px rgba(255, 255, 255, 0))", duration: 0.5 });
    });

    const introTextElements = document.querySelectorAll('.intro-text p');

    introTextElements.forEach((element) => {
      gsap.from(element, {
        opacity: 0,
        y: 50,
        duration: 1,
        scrollTrigger: {
          trigger: element,
          start: 'top 80%',
          end: 'bottom 20%',
          toggleActions: 'play play none reverse',
        },
      });
    });

    // Toggle Read More
    function toggleReadMore() {
      const readMoreContent = document.querySelector('.read-more-content');
      const readMoreToggle = document.querySelector('.read-more-toggle');

      if (readMoreContent.style.display === 'none' || !readMoreContent.style.display) {
        readMoreContent.style.display = 'inline';
        readMoreToggle.textContent = 'Read Less';
      } else {
        readMoreContent.style.display = 'none';
        readMoreToggle.textContent = 'Read More';
      }
    }


    document.querySelector('.read-more-content').style.display = 'none';


    document.querySelector('.read-more-toggle').addEventListener('click', toggleReadMore);
  });
})();



(() => {
  document.addEventListener("DOMContentLoaded", () => {
    const formFields = document.querySelectorAll('.field');

    formFields.forEach((field) => {
      gsap.from(field, {
        opacity: 0,
        y: 50,
        duration: 1,
        scrollTrigger: {
          trigger: field,
          start: 'top 80%',
          end: 'bottom 20%',
          toggleActions: 'play play none reverse',
        },
      });
    });
  });
})();
