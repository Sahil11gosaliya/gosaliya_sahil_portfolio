(function() {
    // Selecting the elements
    const hamMenu = document.querySelector('.ham');
    const hamIconOpen = document.querySelector('.menu-open');
    const hamIconClose = document.querySelector('.menu-close');

    // Initially hide the ham menu
    hamMenu.style.display = 'none';

    // Event listener to toggle the visibility of the ham menu
    hamIconOpen.addEventListener('click', function() {
        hamMenu.style.display = 'block';
    });

    hamIconClose.addEventListener('click', function() {
        hamMenu.style.display = 'none';
    });
})();
