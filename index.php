<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hind+Madurai:wght@400;600&family=Lora:ital@1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>






<!-- BACKGROUND -->
<div class="background">
    <!-- HEADER -->
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
 </div>
 <div class="container">
        <h1>My Wand Collection</h1>

        <!-- navigation -->

<nav class="my-5 subFont">
    <ul class="nav nav-pills" role="tablist">
        <li class="nav-items">
            <a class="nav-link active" aria-current="page" role="tab" data-bs-toggle="pill" data-bs-target="#wishlist">Wishlist</a>
        </li>
        <li class="nav-items">
            <a class="nav-link" aria-current="page" data-bs-toggle="pill" data-bs-target="#collection" role="tab">My Collection</a>
        </li>
        <li class="nav-items">
            <a class="nav-link" aria-current="page" data-bs-toggle="pill" data-bs-target="#add-item" role="tab">Add a wand</a>
        </li>
    </ul>
</nav>

<div class="tab-content">
        <div class="tab-pane active" id="wishlist" role="tabpanel">
        <div class="row">

<?php 
require "php/database.php";
$db = Database::connect();
$statement = $db->prepare('SELECT * FROM wishlist');
if($statement->execute()){
    while($item = $statement->fetch(PDO::FETCH_ASSOC)){
        echo '<div class="col-md-6 col-lg-4">
                <div class="img-thumbnail">';

        echo ' <img class="img-fluid" src="images/'. $item['image'] .'" alt="'. $item['firstName'] . $item['lastName'] .'\'s Wand">';

        echo ' <div class="caption">
        <h2>'. $item['firstName'] .' '. $item['lastName'] .'</h2>';

        echo '<p>Description here</p>';

        echo '<p class="fw-bold">'. $item['container'] .'</p>';

        echo '<span class="price badge rounded-pill bg-dark">'. number_format($item['price'], 2, '.', '') .' €</span>';

        echo '</div>
        </div>
    </div>';
    }
}

?>
        
    </div>
    </div>
</div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>