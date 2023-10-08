import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

document.addEventListener('DOMContentLoaded', function () {
    const button = document.getElementById('showHideButton');
    const contentToToggle = document.getElementById('contentToToggle');

    button.addEventListener('click', function () {
        contentToToggle.classList.toggle('hidden');
    });
});

export { application }
