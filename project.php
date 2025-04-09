<?php 

include("connexion.php");
$requete="SELECT * FROM projets WHERE id_proj=1";
$stmt=$db->query($requete);
$result=$stmt -> fetchall(PDO::FETCH_ASSOC);

$totalProjectsQuery = "SELECT COUNT(*) as total FROM projets";
$totalProjectsStmt = $db->query($totalProjectsQuery);
$totalProjects = $totalProjectsStmt->fetch(PDO::FETCH_ASSOC)['total'];


if(isset($_GET["proj"])){
    $proj = $_GET["proj"];

    $prevProj = ($proj > 1) ? $proj - 1 : $totalProjects;
    $nextProj = ($proj < $totalProjects) ? $proj + 1 : 1;
}
else{
    $proj = "1";
}

$requete="SELECT * FROM projets WHERE id_proj=$proj";
$stmt=$db->query($requete);
$result=$stmt-> fetchall(PDO::FETCH_ASSOC);


?>

<!DOCTYPE html>
<html lang="fr" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="Présentation de mes projets personnels et professionnels dans le domaine du numérique.">
    <meta name="keywords"
        content="Sabine Thibout, France, front-end développeuse, back-end développeuse, full-stack développeuse, graphic designer, ui designer, portfolio, designer française, développeuse française,sabine thibout, sabinethibout, portfolio sabine thibout">
    <title>Sabine Thibout | portfolio</title>
    <link rel="shortcut icon" type="image/png" href="./favicon.ico" />
    <link rel="stylesheet" href="style/fonts.css">
    <link rel="stylesheet" href="style/projects.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <script defer type="text/javascript"
    src="https://res.cloudinary.com/veseylab/raw/upload/v1636192990/magicmouse/magic_mouse-1.2.1.cdn.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
    <script>document.documentElement.className="js";</script>
</head>
<body>
    <div class="cursor"></div>
    <div class="cursor2"></div>
    <header>
      <div class="nav-container">
        <a href="index.php">
            <img src="./img/arrow.svg" alt="Retour en arrière" class="back">
        </a>
        <nav>
              <a href="./index.php#whoAmI" class="nav-item change">À propos</a>
              <a href="./index.php#myProjects" class="nav-item change2">Mes projets</a>
              <a href="./index.php#contact" class="nav-item">Contact</a>
        </nav>

      </div>
        
        <div class="header-text">   
            <div class="title-container">
                <?php
                foreach ($result as $row) {
                    $words = explode(" ", $row["titre"]);
                    $count = count($words);
                    } if ($count == 2) {
                        echo "<span class='first-part'>{$words[0]}</span> <span class='second-part'>{$words[1]}</span>";
                    } elseif ($count == 3) {
                        echo "<span class='first-part'>{$words[0]} {$words[1]}</span> <span class='second-part'>{$words[2]}</span>";
                    } 
                ?>
            </div>

        </div>
        
        <div class="img-cover img-cover<?php echo $row['id_proj']; ?>" style="background-image: url('./img/projects/<?php echo $row['id_proj']; ?>/header.jpg'); ">
        </div>
    </header>
    
    <section>
        <div class="informations-container">
           <div class="informations-data">
                <div class="date">
                    <p class="date-title">Date</p>
                    <p> <?php foreach ($result as $row) echo $row["date"]?></p>
                </div>
                <div class="technologies">
                    <p class="technologies-title">Technologies</p>
                    <p> <?php foreach ($result as $row) echo $row["technologies"]?></p>
                </div>
           </div>
           <div class="informations-text">
                <p class="text-title"> <?php foreach ($result as $row) echo $row["accroche"]?></p>
                <p class="text-description"><?php foreach ($result as $row) echo $row["description"]?></p>
                <?php if (!empty($row["lien"])): ?>
                    <a href="<?php echo $row["lien"]; ?>" class="button link-project">
                        <p>Visit project</p>
                        <img src="./img/arrow.svg" alt="Visit the project">
                    </a>
                <?php endif; ?>
           </div>     
        </div>
    </section>
    <section>
        <canvas></canvas>
        <div class="img-container">
            <?php
            $projectFolder = './img/projects/' . $row['id_proj'] . '/';
            $imageIndex = 1;
            while (file_exists($projectFolder . $imageIndex . '.jpg')) {
                echo "
                <div class='img-project-container'>
                    <img class='img-project' src='{$projectFolder}{$imageIndex}.jpg' />
                </div>";
                $imageIndex++; 
            }
            ?>
        </div>
        <div class="project-navigation">
        <a href="project.php?proj=<?php echo $prevProj; ?>" class="button btn-nav prev-project">
          <img src="./img/arrow.svg" alt="">
          <p>Précédent</p>
        </a>
        <a href="project.php?proj=<?php echo $nextProj; ?>" class="button btn-nav next-project">
          <p>Suivant</p>
          <img src="./img/arrow.svg" alt="">
        </a>
     </div>
    </section>
    </section>


     <footer>
        <a href="index.php#whoAmI" class="navItems change">À propos</a>
        <a href="index.php#myProjects" class="navItems change2">Mes projets</a>
        <a href="index.php#contact" class="navItems">Contact</a>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/TextPlugin.min.js"></script>
     <script src="./script/animationProjet.js"></script>
     <script src="./script/projects.js"></script>

    
</body>
</html>