<?php

include ('include/constant.php');
include (SERVER_INCLUDE_PATH.'db.php');
include (SERVER_INCLUDE_PATH.'function.php');

if(!isset($_SESSION['ADMIN_ID'])){
    $_SESSION['ErrorMsg'] = "Please login";
    redirect('login.php');
}


$sql = mysqli_query($conDB, "select * from profile where id ='1'");
while($row = mysqli_fetch_assoc($sql)){
    $hname = $row['name'];
    $hemail = $row['email'];
    $primaryphone = $row['primaryphone'];
    $address = $row['address'];
    $district = $row['district'];
    $pincode = $row['pincode'];
    $gst = $row['gst'];
    $description = $row['description'];
    $url = $row['url'];
    $logo  = $row['logo'];
    $checkIn = $row['checkIn'];
    $checkout = $row['checkOut'];
}
if(isset($_POST['submit'])){
   
    $hname = $_POST['hname'];
    $hemail = $_POST['hemail'];
    $phone = $_POST['phone'];
    $district = $_POST['distric'];
    $pincode = $_POST['pincode'];
    $gst = $_POST['gst'];
    $address = $_POST['haddres'];
    $description  = $_POST['description'];
    $hurl  = $_POST['hurl'];
    $checkIn  = $_POST['checkIn'];
    $checkout  = $_POST['checkout'];
    

    if($_FILES['hlogo']['name'] != ''){
        $extension=array('jpeg','jpg','JPG','png','gif');
  
        $roomImgName = $_FILES['hlogo']['name'];
        $roomImgTemp = $_FILES['hlogo']['tmp_name'];
        $ext=pathinfo($roomImgName,PATHINFO_EXTENSION);
        
        $newfilename=rand(100000,999999).".".$ext;
        move_uploaded_file($roomImgTemp, SERVER_ADMIN_IMG.$newfilename);
        $sql = "update profile set name='$hname',email='$hemail',primaryphone='$phone',address='$address',district='$district',pincode='$pincode',gst='$gst',description='$description',url='$hurl',logo='$newfilename',checkIn='$checkIn',checkOut='$checkout' where id ='1'";
    }else{
        $sql = "update profile set name='$hname',email='$hemail',primaryphone='$phone',address='$address',district='$district',pincode='$pincode',gst='$gst',description='$description',url='$hurl',checkIn='$checkIn',checkOut='$checkout' where id ='1'";
    }

    
    if(mysqli_query($conDB, $sql)){
        $_SESSION['SuccessMsg'] = "Update Successfull";
        redirect('profile.php');
    }
}



?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="favicons/img-apple-icon.png">
  <link rel="icon" type="image/png" href="favicons/img-favicon.png">
  <meta name="keywords" content="">
  <meta name="description" content="">

  <meta name="twitter:card" content="">
  <meta name="twitter:site" content="">
  <meta name="twitter:title" content="">
  <meta name="twitter:description" content="">
  <meta name="twitter:creator" content="">
  <meta name="twitter:image" content="">

  <meta property="fb:app_id" content="">
  <meta property="og:title" content="">
  <meta property="og:type" content="">
  <meta property="og:url" content="">
  <meta property="og:image" content="">
  <meta property=" og:description" content="">
  <meta property="og:site_name" content="">

  <title>Profile</title>

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="css/icons.css" rel="stylesheet">
  <link href="css/svg.css" rel="stylesheet">
  <link id="pagestyle" href="css/getbootstrap.css" rel="stylesheet">
  <link id="pagestyle" href="css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">


</head>

<body class="g-sidenav-show  bg-gray-100">

<?php include(SERVER_ADMIN_SCREEN_PATH.'sidebar.php') ?>
  

  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

    <?php include(SERVER_ADMIN_SCREEN_PATH.'navbar.php') ?>

        <div class="container-fluid">
            <div class="page-header min-height-140 border-radius-xl mt-4"
                style="background-image: url('<?php echo FRONT_SITE_IMG.'headerBg.webp' ?>'); background-position-y: 50%;">
                <span class="mask bg-gradient-primary opacity-6"></span>
            </div>
            <div class="card card-body blur shadow-blur mx-4 mt-n6 overflow-hidden">
                <div class="row gx-4">
                    <div class="col-auto">
                        
                    </div>
                    <div class="col-auto my-auto">
                        <div class="h-100">
                            <h5 class="mb-1">
                                Profile
                            </h5>
                            <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                                <li class="breadcrumb-item text-sm">
                                    <a class="opacity-3 text-dark" href="javascript:;.html">
                                    <svg width="12px" height="12px" class="mb-1" viewbox="0 0 45 40" version="1.1"
                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                        <title>shop </title>
                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <g transform="translate(-1716.000000, -439.000000)" fill="#252f40" fill-rule="nonzero">
                                            <g transform="translate(1716.000000, 291.000000)">
                                            <g transform="translate(0.000000, 148.000000)">
                                                <path
                                                d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z">
                                                </path>
                                                <path
                                                d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z">
                                                </path>
                                            </g>
                                            </g>
                                        </g>
                                        </g>
                                    </svg>
                                    </a>
                                </li>
                                <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="<?php echo FRONT_BOOKING_SITE ?>">Home</a></li>
                                <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Profile</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="container-fluid py-4" id="manage_room">

            <div class="row">
                <div class="col-12">
                    <div class="multisteps-form">
                        

                        <div class="row">
                            <div class="col-12 col-lg-8 m-auto">
                            <div class="card p-3">
                                <form method="POST" id="profileForm" enctype="multipart/form-data">
                                    <div class="form-group mb-3">
                                        <label for="hname">Hotel Name</label>
                                        <input class="form-control" type="text" name="hname" id="hname" value="<?php echo $hname ?>">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="hurl">Hotel Website Link</label>
                                        <input class="form-control" type="text" name="hurl" id="hurl" value="<?php echo $url ?>">
                                    </div>
                                    <div class="form-group mb-3">
                                        <?php
                                            
                                            if($logo == ''){
                                                echo '';
                                            }else{
                                                $logo_path = FRONT_SITE_IMG.hotelDetail()['logo'];
                                                echo "
                                                    <img src='$logo_path' style='width:50px'>
                                                    <br/>
                                                ";
                                            }
                                        
                                        ?> 
                                        <label for="hlogo">Hotel Logo</label>
                                        <input class="form-control" type="file" name="hlogo" id="hlogo">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="hemail">Hotel Email</label>
                                        <input class="form-control" type="text" name="hemail" id="hemail" value="<?php echo $hemail ?>">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="phone">Phone</label>
                                        <input class="form-control" type="text" name="phone" id="phone" value="<?php echo $primaryphone ?>">
                                    </div>
                                    <div class="row p0">
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="checkIn">Check In Time</label>
                                            <input class="form-control" type="text" name="checkIn" id="checkIn" value="<?php echo $checkIn ?>">
                                        </div>
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="checkout">Check Out Time</label>
                                            <input class="form-control" type="text" name="checkout" id="checkout" value="<?php echo $checkout ?>">
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="gst">GST Number</label>
                                        <input class="form-control" type="text" name="gst" id="gst" value="<?php echo $gst ?>">
                                    </div>
                                    <div class="row p0">
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="distric">District</label>
                                            <input class="form-control" type="text" name="distric" id="distric" value="<?php echo $district ?>">
                                        </div>
                                        <div class="form-group mb-3 col-md-6">
                                            <label for="pincode">Pincode</label>
                                            <input class="form-control" type="text" name="pincode" id="pincode" value="<?php echo $pincode ?>">
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="haddres">Address</label>
                                        <textarea name="haddres" id="haddres" class="form-control" ><?php echo $address ?></textarea>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="description">Description</label>
                                        <textarea name="description" id="description" class="form-control" ><?php echo $description ?></textarea>
                                    </div>
                                    <input class="form-controlbtn btn bg-gradient-primary btn-sm mb-0" type="submit" name="submit" value="Update">
                                </form>
                            </div>
                            
                            <div class="s25"></div>
                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            
            <?php include(SERVER_ADMIN_SCREEN_PATH.'footer.php') ?>
        </div>

  </main>

  <div id="indexSlidBar">
      <div class="closeContent"></div>
      <div class="contatent">
          <div class="close"></div>
          <div class="box">

          </div>
      </div>
  </div>

  <?php include(SERVER_ADMIN_SCREEN_PATH.'script.php') ?>

  
  

  

  <script>
       $('#navTopBar').hide();
        $('nav li').removeClass('active');
        $('nav li a[href$="profile.php"]').parent().addClass('active');
</script>




</body>

</html>