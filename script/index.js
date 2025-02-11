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


    // Parrallax effect
    const videoText = document.querySelector(".video-text");


    window.addEventListener("scroll", () => {
        const screenWidth = window.innerWidth; 
    
        if (screenWidth < 700) {
            videoText.style.bottom = window.scrollY * 0.06 + "px"; 
        } else {
            videoText.style.bottom = window.scrollY * 0.12 + "px"; 
        }
    
    });
    

    const headerImg = document.querySelector(".header-img");

    window.addEventListener("scroll", () => {
        

        const screenWidth = window.innerWidth; 
    
        if (screenWidth < 700) {
            headerImg.style.bottom = window.scrollY * - 0.02 + "px";
        } else {
            headerImg.style.bottom = window.scrollY * - 0.1 + "px";
        }
    });
       

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

    //add 0 if project's number < 10
    let projectIdElements = document.querySelectorAll('.number-card');

    projectIdElements.forEach(function(projectIdElement) {
        let projectId = parseInt(projectIdElement.textContent.trim());

        if (projectId < 10) {
            projectIdElement.textContent = '0' + projectId;
        }
    });







});