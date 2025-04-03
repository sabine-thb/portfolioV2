document.addEventListener('DOMContentLoaded', function() {

     //CURSOR
     options = {
        "cursorOuter": "circle-basic",
        "hoverEffect": "circle-move",
        "hoverItemMove": false,
        "defaultCursor": false,
        "outerWidth": 40,
        "outerHeight": 40,
    };
    magicMouse(options);

    AOS.init({});

    //change arrow color btn on hover
    document.querySelectorAll('.button').forEach(button => {
        const img = button.querySelector(':scope > img'); 
        if (!img) return;
    
        button.addEventListener('mouseenter', () => {
            img.dataset.originalSrc = img.src;
            img.src = './img/arrow-white.svg'; 
        });
    
        button.addEventListener('mouseleave', () => {
            if (img.dataset.originalSrc) {
                img.src = img.dataset.originalSrc; 
            }
        });
    });


});
