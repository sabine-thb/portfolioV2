gsap.from('.header-text',{ 
    duration :1.5,
    opacity: 0,
    scrollTrigger:{
                trigger : ".header-text",
                toggleActions : 'restart none none none'
     }
  
})

gsap.from('.img-cover',{ 
    duration :1.5,
    opacity: 0,
    scrollTrigger:{
                trigger : ".img-cover",
                toggleActions : 'restart none none none'
     }
  
})

gsap.from('.informations-container',{ 
    duration :2.5,
    opacity: 0,
    scrollTrigger:{
                trigger : ".informations-container",
                toggleActions : 'restart none none none'
     }
  
})


  gsap.utils.toArray('.img-project').forEach(img => {
    gsap.from(img, {
      duration: 2, // Réduction de la durée pour un effet plus vif
      opacity: 0,
      scale: 0.1, 
      y: 100, 
      ease: 'power2.out', 
      scrollTrigger: {
        trigger: img,
        toggleActions: 'play none none none',
        start: 'top 140%',
        markers: false
      }
    });
  });

