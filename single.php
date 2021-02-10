<?php
	include('getNoticia.php');

	if(isset($_GET['ID'])){
		$noticia = getNoticia($_GET['ID']);
	}else{
		$noticia = array(
			'ID' => '',
			'Titulo' => 'ERROR',
			'Copete' => '',
			'Imagen' => '',
			'Texto' => '',
			'Autor' => ''
		);
	}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Levi Cindy</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">
    <link rel="icon" href="images/favicon.ico" />

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight img" style="background-image: url(images/sidebar-bg.jpg);">
			<h1 id="colorlib-logo" class="mb-4"><a href="index.html">levNews</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
          <li class="colorlib-active" ><a href="index.html">Home</a></li>
					<li><a href="EditarNoticias.html">Editar Noticias</a></li>
					<li><a href="Insert.php">Insertar Noticia</a></li>
				</ul>
			</nav>
		</aside>
		<div id="colorlib-main">
			<section class="ftco-section ftco-no-pt ftco-no-pb">
				<div class="container px-0">
					<div class="row d-flex no-gutters">
						<div class="col-lg-8 px-md-5 py-5">
							<div class="row">
                <h1 class="mb-3"><?php echo $noticia['Titulo']; ?></h1>
                <p>Autor: <?php echo $noticia['Autor']; ?></p>
                <em><h5><?php echo $noticia['Copete']; ?></h5></em>

								<p><img src="<?php echo $noticia['Imagen']; ?>" alt="" class="img-fluid"></p>
								<p><?php echo $noticia['Texto']; ?></p>
							</div><!-- END-->
						</div>
					</div>
				</div>
	    	</section>
		</div><!-- END COLORLIB-MAIN -->
	</div><!-- END COLORLIB-PAGE -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>