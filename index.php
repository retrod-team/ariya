<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arpita</title>
    <?php include('include/head.php') ?>
</head>
<body>

    <?php include('include/nav.php') ?>

    <?php include('include/homeMain.php') ?>

    <?php include('include/footer.php') ?>





    <script>
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
      pagination: {
        el: ".swiper-pagination",
        type: "fraction",
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>
    
    
</body>
</html>