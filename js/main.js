(() => {
  console.log("IIFE Fired");

  // Hamburger Menu
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

  // dynamic work pages
  // magic pointer
  // rotating crystal icon
  // gif

  document.addEventListener('DOMContentLoaded', () => {
    const player = new Plyr('#plyr-video', {
      controls: ['play-large', 'play', 'progress', 'current-time', 'mute', 'volume', 'fullscreen'],
      tooltips: { controls: true, seek: true },
      keyboard: { focused: true, global: true },
      iconUrl: 'https://cdn.plyr.io/3.6.2/plyr.svg',
    });
  });

  // video
  // navlink
  // wand
  // magic-reveal.js
  document.addEventListener("DOMContentLoaded", () => {
    const sectionText = document.querySelector(".front .text");

    // SplitText
    const split = new SplitType(sectionText, { types: "words,chars", charsClass: "char", wordsClass: "word" });

    // GSAP Animation
    gsap.from(split.chars, {
      opacity: 0,
      y: 20,
      stagger: {
        amount: 0.5, // Adjust the amount to control the stagger between characters
        grid: [split.lines.length, split.chars.length / split.lines.length],
        from: "random", // Start from a random character
        ease: "power2.out",
      },
      duration: 1,
      scrollTrigger: {
        trigger: sectionText,
        start: "top 80%",
      },
    });
  });

  // common.js
  document.addEventListener("DOMContentLoaded", () => {
    const wandElements = document.querySelectorAll(".wand");

    wandElements.forEach((wand) => {
      // GSAP Animation
      const tl = gsap.timeline({ defaults: { ease: "power2.out" }, repeat: -1 });

      // Initial state
      tl.set(wand, { opacity: 1, filter: "drop-shadow(10px 0 10px rgba(255, 255, 255, 0))" });

      // Animation to make the drop shadow glow and fade
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

    // Initially hide the extra content
    document.querySelector('.read-more-content').style.display = 'none';

    // Attach the event listener
    document.querySelector('.read-more-toggle').addEventListener('click', toggleReadMore);
  });
})();




document.addEventListener("DOMContentLoaded", () => {
  const formFields = document.querySelectorAll('.field');

  gsap.from(formFields, {
    opacity: 0,
    y: 50,
    duration: 1,
    stagger: 0.2, // Adjust the stagger for a sequential reveal
  });
});
