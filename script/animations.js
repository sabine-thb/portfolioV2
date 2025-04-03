

// gsap.from('.firstName, .lastName',{ 
//     duration :1.5,
//     opacity: 0,
//     scrollTrigger:{
//                 trigger : "header",
//                 toggleActions : 'restart none none none'
//      }
  
// })

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






