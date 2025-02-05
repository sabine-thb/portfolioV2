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



    //Lorsque je naviguais d'une de mes pages de projet jusqu'à ma page d'accueil sur la section #projets ou #contact par exemple, alors l'écran au lieu de scroll jusqu'à la section souhaitée restait bloquée sur le haut de page avec l'animation.

    //Le code suivant permet ainsi de bloquer l'animation si celle-ci c'est déjà lancée à l'arrivée de l'utilisateur sur le site.

    //Les liens de la barre de nav scroll désormais vers la section souhaitée, même si on n'est plus sur la page d'accueil.


        // Variable globale pour suivre l'état de l'animation
    let animationPlayed = false;

    // Vérifier et exécuter l'animation si elle n'a pas encore été jouée
    if (!animationPlayed) {
        // Exécuter l'animation avec GSAP
        const titrePresent = document.querySelector('.first').textContent
        gsap.set('.first', {text:''})
        gsap.to('.first',{
            text:titrePresent,
            duration:2,
        })

        const maTimeline= gsap.timeline()


        maTimeline.from('.dev',{ 
            duration :1.5,
            x : -300,
            opacity: 0,
          
        })

        maTimeline.from('.web',{ 
            duration :1.5,
            x : -300,
            opacity: 0,
          
        })

        maTimeline.from('.crea',{ 
            duration :1.5,
            x : -300,
            opacity: 0,
          
        })

        // Marquer l'animation comme jouée en mettant à jour la variable globale
        animationPlayed = true;
    }
    



});