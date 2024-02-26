export function projectgal() {
    function hideAllSections() {
        const sections = document.querySelectorAll('.bgimg');
        sections.forEach((section) => {
            section.style.display = 'none';
        });
    }

    // Initially hide all sections and then show the Illustrations section by default
    hideAllSections();
    document.getElementById('illustrations').style.display = 'block'; // Changed 'contents' to 'block' for better compatibility

    // Function to add click event listeners to section links
    function addSectionClickEventListener(selector, sectionId) {
        document.querySelector(selector).addEventListener('click', (event) => {
            event.preventDefault(); // Prevent default link action
            hideAllSections();
            document.getElementById(sectionId).style.display = 'block'; // Ensure the section is visible
        });
    }

    // Add event listeners for each section
    addSectionClickEventListener('.ibox a', 'illustrations');
    addSectionClickEventListener('.wbox a', 'websites');
    addSectionClickEventListener('.mbox a', 'motion_graphics');
    addSectionClickEventListener('.cbox a', 'content_writing');

}