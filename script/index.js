document.addEventListener("DOMContentLoaded", function () {

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

    // Change image hover effect
    document.querySelectorAll('.img-card').forEach(function(card) {
        const originalImage = card.style.backgroundImage;
    
        card.addEventListener('mouseover', function() {
            let hoverImage = card.getAttribute('data-hover-img');
            card.style.backgroundImage = `url(${hoverImage})`; 
        });
    
        card.addEventListener('mouseout', function() {
            card.style.backgroundImage = originalImage; 
        });
    });
    


    // Sticky cards horizontal scroll effects
    gsap.registerPlugin(ScrollTrigger);
    let cards = gsap.utils.toArray(".card-container .card");
    let gallery = document.querySelector(".card");

    function getMaxWidth() {
        maxWidth = 0;
        cards.forEach((card) => {
            maxWidth += card.offsetWidth;
        });
        maxWidth += 20 * (cards.length - 1);
        return maxWidth;
    }
    getMaxWidth();



    gsap.to(cards, {
        x: () => `-${getMaxWidth() - window.innerWidth}`,
        ease: "none",
        scrollTrigger: {
            start: "top ",
            trigger: ".card-container",
            pin: true,
            scrub: true,
            // markers: true,
            invalidateOnRefresh: true,

            end: () => `+=${getMaxWidth()}`,
        },
    });





});