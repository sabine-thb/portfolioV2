<?php
    include("connexion.php");
    $requete="SELECT * FROM projets ORDER BY id_proj";
    $stmt = $db->query($requete);
    $result = $stmt->fetchall(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="Présentation de mes projets personnels et professionnels dans le domaine du numérique.">
    <meta name="keywords"
        content="Sabine Thibout, France, front-end développeuse, back-end développeuse, full-stack développeuse, graphic designer, ui designer, portfolio, designer française, développeuse française,sabine thibout, sabinethibout, portfolio sabine thibout">

    <title>Sabine Thibout | Portfolio</title>
    <link rel="stylesheet" href="style/home.css">
    <link rel="stylesheet" href="style/index.css">
    <link rel="stylesheet" href="style/fonts.css">
    <link rel="shortcut icon" type="image/png" href="./img/logo.png" /> 
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <script defer type="text/javascript"
    src="https://res.cloudinary.com/veseylab/raw/upload/v1636192990/magicmouse/magic_mouse-1.2.1.cdn.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
</head>

<body>
    <div class="cursor"></div>
    <div class="cursor2"></div>
    <header>
        <nav>
            <a href="#whoAmI" class="navItems change">About Me</a>
            <a href="#myProjects" class="navItems change2">My projects</a>
            <a href="#contact" class="navItems">Contact</a>
        </nav>
        <div class="img-container">
            <div class="header-img"></div>
                <h1 class="title firstName">Sabine</h1>
                <h1 class="title lastName">Thibo
                    <span class="last-letter">u
                        <img src="./img/flower.svg" alt="" class="flower1">
                    </span>
                    t
                </h1>
            
            <img src="./img/flower.svg" alt="" class="flower2">
            <img src="./img/flower.svg" alt="" class="flower3">       
        </div>
        
        
    </header>
    <section class="description" id="whoAmI">
        <h2 class="title-section">Who <span class="italic">am i ?</span></h2>
        <p class="content">Actuellement en dernière année de BUT Métiers du Multimédia et de l’Internet, je suis passionnée par la création web. <br>
        Que ce soit la réalisation de wireframes ou le développement web, tout m’intéresse ! 
        Curieuse et motivée, j’apprends en continu pour proposer des solutions à la fois esthétiques et performantes. <br>
        Ayant acquis une solide expérience en webdesign et développement à travers mes projets universitaires, j’ai affiné ma créativité pour concevoir des interfaces esthétiques et intuitives. En parallèle, mon année d’apprentissage en tant que développeuse front-end m’a permis de renforcer mes compétences techniques pour donner vie à ces créations avec efficacité.</p>
        <a href="./doc/CV-SabineThibout.pdf" target="_blank" class="CV">
            <p>Download my CV</p>
            <img src="./img/arrow.svg" alt="">
        </a>
    </section>
    <section>
        <div class="video-container">
            <video class="video" src="./video/video.mp4" autoplay muted loop> </video>
            <div class="video-text">
                créative dès mon plus jeune age, le dessin et la peinture sont ma passion.
                j’aime quand les idées prennent forme puis prennent vie. Curieuse, toujours prête à explorer, à apprendre. Dynamique, parce que l’action et l’évolution sont essentielles. 
                audacieuse, avec cette envie constante de donner du caractère aux projets. Passionnée par la recherche de l’originalité.
                Pas juste faire. Faire bien. Faire différent. 
            </div>
            </div>
    </section>
   
    <section class="projects" id="myProjects">
        <div class="title-padding">
            <h2 class="title-section">Let's discover <span class="italic">my projects</span></h2>
            <h3 class="subtitle">Lorem ipsum dolor</h3>
        </div>
    
        <div class="card-container">
            <?php foreach ($result as $row){?>
                <a href="projet.php?proj=<?php echo $row["id_proj"]?>"  class=" card card<?php echo $row["id_proj"]?>">
                    <div class="img-card"  
                        style="background-image: url('./img/projects/<?php echo $row["id_proj"]?>/cover.jpg');"
                        data-hover-img='./img/projects/<?php echo $row["id_proj"]?>/hover.jpg'
                    >
                    </div>
                    <div class="text-card">
                        <div class="text-part1"> 
                            <div class="title-card"> <?php echo $row["titre"]?></div>
                            <div class="competence-card"><?php echo $row["competence_principale"]?></div>
                        </div>
                        <div class="text-part2"> 
                            <div class="title-card">Technologies</div>
                            <div class="technologies-card"><?php echo $row["technologies"]?></div>
                        </div>
                        <div class="number-card">
                            <?php echo $row["id_proj"]?>
                        </div>
                        
                    </div>
                </a>
            <?php } ?>
        </div>
    </section>
    <section id="contact">
        
    </section>
    <section></section>
    <section></section>
    <section></section>

    
    <footer></footer>
    
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/TextPlugin.min.js"></script>
     <script src="./script/animations.js"></script>
     <script src="./script/index.js"></script>
</body>

</html>