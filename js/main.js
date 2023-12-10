(() => {
  console.log("IIFE Fired");

  // Masonry Grid

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
})();




//dynamic work pages

//magic pointer

//rotating crystal icon

//gif

(function () {
  document.addEventListener('DOMContentLoaded', function () {
    const player = new Plyr('#plyr-video', {
      controls: ['play-large', 'play', 'progress', 'current-time', 'mute', 'volume', 'fullscreen'],
      tooltips: { controls: true, seek: true },
      keyboard: { focused: true, global: true },
      iconUrl: 'https://cdn.plyr.io/3.6.2/plyr.svg',
    });
  });
})();

//video



//navlink

//wand
// magic-reveal.js
(function () {
  document.addEventListener("DOMContentLoaded", function () {
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
})();


(function () {
  document.addEventListener("DOMContentLoaded", function () {
    const wand = document.querySelector(".wand");

    // GSAP Animation
    const tl = gsap.timeline({ defaults: { ease: "power2.out" }, repeat: -1 });

    // Initial state
    tl.set(wand, { opacity: 1, filter: "drop-shadow(10px 0 10px rgba(255, 255, 255, 0))" });

    // Animation to make the drop shadow glow and fade
    tl.to(wand, { filter: "drop-shadow(20px 0 20px rgba(255, 255, 255, 0.5))", duration: 0.5 })
      .to(wand, { filter: "drop-shadow(10px 0 10px rgba(255, 255, 255, 0))", duration: 0.5 });
  });
})();

(function () {
  document.addEventListener("DOMContentLoaded", function () {
    document.addEventListener("mousemove", function (e) {
      const sparkle = document.createElement('div');
      sparkle.className = 'sparkle';

      const star = document.createElement('div');
      star.className = 'star';
      sparkle.appendChild(star);

      sparkle.style.left = (e.pageX - 5) + 'px';
      sparkle.style.top = (e.pageY - 5) + 'px';

      document.body.appendChild(sparkle);

      // Remove sparkles after animation completes
      sparkle.addEventListener('animationend', function () {
        document.body.removeChild(this);
      });
    });
  });
})();
