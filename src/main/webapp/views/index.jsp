<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<title>Cabinet Medical | Accueil</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/accueil.css">
	<script type="text/javascript" src="assets/js/script.js"></script>
	<script src="assets/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/popper.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="wrapper" >
	<nav class="navbar navbar-expand-lg navbar-light" style="margin-bottom: 10px;">
		<div class="container-fluid">		
			<a class="navbar-brand" ><img src="assets/image/medical.png" class="rounded-circle" alt="Cinque Terre" width="80px" height="80px"><span class="titrelogo" style="color: #35d4df;"> e-Medicale.fr</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ml-auto ">
				<li class="nav-item"><s:url namespace="/" action="index" var="accueil"></s:url>
					<s:a class="nav-link" href="%{accueil}">Accueil</s:a>
				</li>
				<li class="nav-item"><s:url namespace="/" action="patient" var="lien1"></s:url> 
					<s:a class="nav-link" href="%{lien1}">Patient</s:a></li>
				<li class="nav-item"><s:url namespace="/" action="medecin" var="lien2"></s:url>
					<s:a class="nav-link" href="%{lien2}">Medecin</s:a>
				</li>
		 		<li class="nav-item"><s:url namespace="/" action="consultation" var="lien3" ></s:url>
		 			<s:a class="nav-link" href="%{lien3}" >Consultation</s:a>
		 		</li>
		 		<li class="nav-item">
					<s:a class="nav-link">Service</s:a>
				</li>
		 		<li class="nav-item">
		 			<s:a class="nav-link ">Contact</s:a>
		 		</li>
			</ul>
			</div>
		</div>
	</nav>
	<div class="container">
	</div>
</body>
</html>