gsap.from('.firstName',{ 
    duration :1.5,
    opacity: 0,
    x:-50,
    scrollTrigger:{
                trigger : "header",
                toggleActions : 'restart none none none'
     }
  
})

gsap.from('.lastName',{ 
    duration :1.5,
    opacity: 0,
    x:50,
    scrollTrigger:{
                trigger : "header",
                toggleActions : 'restart none none none'
     }
  
})

gsap.from('.description',{ 
    duration :1.5,
    opacity: 0,
    scrollTrigger:{
                trigger : ".description",
                toggleActions : 'restart none none none'
     }
  
})




// gsap.from('.scroll-to-discover', {
//     duration: 1.5,
//     opacity: 0,
//     scrollTrigger: {
//       trigger: ".card-container",
//       start: "top top", 
//       toggleActions: 'play none none reverse',
//     },
//   });












