<?php

include ("connect.php");

$getquery = "SELECT name,color FROM `islandsofpersonality` WHERE islandOfPersonalityID = '4';";
$result = executeQuery($getquery);

while ($data = mysqli_fetch_assoc($result)) {
  $name = $data["name"];
  $color = $data ["color"];
  $colorarr = explode(",", $color);
}

$imagequery ="SELECT image, color, content FROM islandcontents WHERE islandOfPersonalityID = '4';";
$imageresult = executeQuery($imagequery);

?>


<!DOCTYPE html>
<html>

<head>
  <title>Friends Island</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="icon" href="Imgs/Logo.png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <style>
    body,
    h1 {
      font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
    }

    h1 {
      letter-spacing: 6px
    }

    .w3-row-padding img {
      margin-bottom: 12px
    }

    <?php 

    while ($imagedata = mysqli_fetch_assoc($imageresult)) {

      $image = $imagedata ["image"];
      $imagearr = explode(",", $image);

      $imagecolor = $imagedata ["color"];
      $imagecolorarr = explode(",", $imagecolor);

      $content = $imagedata ["content"];
      $contentrarr = explode(",", $content);
    ?>

    .friends {
      color: white;
      background-color: <?php echo $imagecolorarr[0] ?>;
      border-style: solid;
      border-radius: 20px;
      text-align: center;
      font-family: Calibri, 'Trebuchet MS', sans-serif;
      font-size: 25px;

    }
  </style>

</head>

<body>

  <!-- !PAGE CONTENT! -->
  <div class="w3-content" style="max-width:1500px">

    <!-- Header -->
    <header class="w3-panel w3-center" style="padding:128px 16px">
      <h1 style="color:<?php echo $colorarr[0] ?>; font-weight: bold;">Althea's Memories</h1>
      <h1 class="w3-xlarge" style="color: <?php echo $colorarr[1] ?>; font-weight: bolder;"><?php echo $name ?></h1>

      <div class="w3-padding-32">
        <div class="w3-bar w3-border">
          <a href="index.php" class="w3-bar-item w3-button w3-hover-yellow">Home</a>
          <a href="familyIsland.php" class="w3-bar-item w3-button w3-hover-pink">Family Island</a>
          <a href="hobbiesIsland.php" class="w3-bar-item w3-button w3-hover-green">Hobbies
            Island</a>
          <a href="#" class="w3-bar-item w3-button w3-hover-purple" style="color:<?php echo $colorarr[2] ?>;">Friends
            Island</a>
          <a href="sadnessIsland.php" class="w3-bar-item w3-button w3-hover-blue">Sadness
            Island</a>
        </div>
      </div>
    </header>

    <!-- Photo Grid -->
    <div class="w3-row-padding w3-grayscale-min" style="margin-bottom:90px">
      
      <div class="w3-half">
        <h1 class="highSchool"
          style="color: <?php echo $imagecolorarr[1] ?>; font-weight: bold; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; text-align: center;">
          <?php echo $contentrarr[0] ?></h1>
        <img src="imgs/<?php echo $imagearr[0] ?>.png" style="width:100%; border-radius: 20px; border-color: <?php echo $imagecolorarr[2] ?>; border-style: groove;">
      </div>

      <div class="w3-half">
        <h1 class="college"
          style="color: <?php echo $imagecolorarr[1] ?>; font-weight: bold; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; text-align: center;">
          <?php echo $contentrarr[1] ?></h1>
        <img src="imgs/<?php echo $imagearr[1] ?>.png" style="width:100%; border-radius: 20px; border-color: <?php echo $imagecolorarr[2] ?>; border-style: groove;">
      </div>
    
    </div>

    <div class="w3-grayscale-min" style="text-align: center;">
      <p Class="friends"><?php echo $contentrarr[2] ?></p>
    </div>

    <?php 
        }
        ?>

    <!-- End Page Content -->
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-64 w3-center w3-large" style="background-color:<?php echo $colorarr[3] ?>">
    <i class="fa fa-facebook-official w3-hover-opacity" style="color: white;"></i>
    <i class="fa fa-instagram w3-hover-opacity" style="color: white;"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity" style="color: white;"></i>
    <i class="fa fa-twitter w3-hover-opacity" style="color: white;"></i>
    <p style="color: white;">© 2024 Althea's Memories. All Rights Reserved.</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
    integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
    crossorigin="anonymous"></script>

</body>

</html>