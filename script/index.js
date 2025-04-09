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
    function updateHoverEffect() {
        const imgCards = document.querySelectorAll(".img-card");

        imgCards.forEach(imgCard => {
            const hoverImg = imgCard.getAttribute("data-hover-img");
            const originalImg = imgCard.style.backgroundImage.match(/url\(["']?(.*?)["']?\)/)[1]; 

            if (window.innerWidth < 720) {
                imgCard.onmouseover = null;
                imgCard.onmouseout = null;
            } else {
                imgCard.addEventListener("mouseover", function () {
                    imgCard.style.backgroundImage = `url(${hoverImg})`;
                });

                imgCard.addEventListener("mouseout", function () {
                    imgCard.style.backgroundImage = `url(${originalImg})`;
                });
            }
        });
    }
    updateHoverEffect();

    window.addEventListener("resize", updateHoverEffect);



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
        // maxWidth += 20 * (cards.length - 1);
        maxWidth += 20 * (cards.length); 
        // maxWidth += 50 * (cards.length - 1);

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



    //  gsap.to('.scroll-to-discover', {
    //     opacity: 1,
    //     duration: 0.2,
    //     scrollTrigger: {
    //         trigger: ".card-container",
    //         start: "top top",
    //         end: () => `+=${getMaxWidth()}`,
    //         scrub: true,
    //         toggleActions: 'play none none reverse',
    //         onUpdate: (self) => {
    //             gsap.to('.scroll-to-discover', { opacity: self.progress > 0 && self.progress < 1 ? 1 : 0, duration: 0.2 });
    //         }
    //     }
    // });

    gsap.to('.scroll-to-discover', {
        opacity: 1,
        duration: 0.2,
        scrollTrigger: {
            trigger: ".card-container",
            start: "top top",
            onEnter: () => gsap.to('.scroll-to-discover', { opacity: 1, duration: 0.2 }),
            onLeaveBack: () => gsap.to('.scroll-to-discover', { opacity: 0, duration: 0.2 }),
            end: () => `+=${getMaxWidth() * 0.8}`, // Disparaît à 80% du scroll horizontal
            onLeave: () => gsap.to('.scroll-to-discover', { opacity: 0, duration: 0.2 }),
            // markers: true // Pour le débogage
        }
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