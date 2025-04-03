gsap.from('.informations-container',{ 
    duration :2.5,
    opacity: 0,
    scrollTrigger:{
                trigger : ".informations-container",
                toggleActions : 'restart none none none'
     }
  
})