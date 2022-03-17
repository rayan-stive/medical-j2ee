<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Cabinet Medical | Patient</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/medecin.css" />
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="assets/js/script.js"></script>
<script src="assets/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/popper.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg nav-tabs navbar-light"
			style="margin-bottom: 10px;">
			<div class="container-fluid">

				<a class="navbar-brand"><img src="assets/image/logo.jpg"
					class="rounded-circle" alt="Cinque Terre" width="160" height="70">
					e-Medicale.fr</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav ml-auto ">
						<li class="nav-item"><s:url namespace="/" action="index"
								var="accueil"></s:url> <s:a class="nav-link" href="%{accueil}">ACCUEIL</s:a>
						</li>
						<li class="nav-item"><s:url namespace="/" action="patient"
								var="lien1"></s:url> <s:a class="nav-link" href="%{lien1}">PATIENT</s:a></li>
						<li class="nav-item"><s:url namespace="/" action="medecin"
								var="lien2"></s:url> <s:a class="nav-link" href="%{lien2}">MEDECIN</s:a>
						</li>
						<li class="nav-item"><s:url namespace="/"
								action="consultation" var="lien3"></s:url> <s:a
								class="nav-link" href="%{lien3}">CONSULTATION</s:a></li>
						<li class="nav-item"><s:a class="nav-link">SERVICE</s:a></li>
						<li class="nav-item"><s:a class="nav-link ">CONTACT</s:a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="jumbotron jumbotron-fluid text-center"
			style="margin-bottom: 10px;">
			<h1 style="font-family: monospace; height: 20px;">MEDECIN</h1>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Nouveau Medecin</button>
			</div>
		</div>
		<marquee direction="left" behavior="alternate" loop="-1">
			<div class="row">		 
				<s:iterator value="medecins">
					<div class="row" style="margin-left: 10px;">
					<div class="card" style="width: 340px; margin: 10px;">
						<img class="card-img-top" src="assets/image/avatar.png" alt="Card image" style="width: 100%; height: 280px;">
						<div class="card-body">
							<h5 class="card-title">
								<s:property value="nomMed" />
								<s:property value="prenomMed" />
							</h5>
							<ul>
								<li class="card-text"><td><s:property value="specialite" /></td></li>
								<li class="card-text"><td><s:property value="nationalite" /></td></li>
								<li class="card-text"><td><s:property value="adresse" /></td></li>
								<li class="card-text"><td><s:property value="telephone" /></td></li>
							</ul>

							<button class="btn btn-primary btnEdit" data-toggle="modal" id="btnEdit" data-target="#myModal" data-id="<s:property value="idMed" />" data-nom="<s:property value="nomMed" />"
							 data-prenom="<s:property value="prenomMed" />" data-specialite="<s:property value="specialite" />" data-nationalite="<s:property value="nationalite" />" 
							 data-adresse="<s:property value="adresse" />" data-telephone="<s:property value="telephone" />" >Editer</button>
							 
							<s:url namespace="/" action="deleteMedecin" var="delete">
								<s:param name="refMed">
									<s:property value="idMed" />
								</s:param>
							</s:url>
							<s:a href="%{delete}" class="btn btn-danger">Supprimer</s:a>
						</div>
					</div>
					</div>
				</s:iterator>
			
			</div>
		</marquee>
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<div class="card bg-info text-white text-center"
							style="width: 100%;">
							<h5 class="card-body">Profile Medecin</h5>
						</div>
					</div>
					<div class="modal-body" style="margin: 20px; margin-top: 0px;">
						<s:form action="saveMedecin" method="post">
							<div class="form-group">
								<s:textfield label="Identifiant " id="idMed" name="medecin.idMed" class="form-control" style="margin-left: 20px; width: 100%; margin-bottom: 20px;"></s:textfield>
							</div>
							<div class="form-group">
								<s:textfield label="Nom " id="nom" name="medecin.nomMed" class="form-control" style="margin-left: 20px; width: 100%; margin-bottom: 20px;"></s:textfield>
							</div>
							<div class="form-group">
								<s:textfield label="Prenom " id="prenom" name="medecin.prenomMed" class="form-control" style="margin-left: 20px; width: 100%; margin-bottom: 20px;"></s:textfield>
							</div>
							<div class="form-group">
								<s:textfield label="Spécialite " id="specialite" name="medecin.specialite" class="form-control" style="margin-left: 20px; width: 100%; margin-bottom: 20px;"></s:textfield>
							</div>
							<div class="form-group">
								<s:textfield label="Nationalite " id="nationalite" name="medecin.nationalite" class="form-control" style="margin-left: 20px; width: 100%; margin-bottom: 20px;"></s:textfield>
							</div>
							<div class="form-group">
								<s:textfield label="Adresse " id="adresse" name="medecin.adresse" class="form-control" style="margin-left: 20px; width: 100%; margin-bottom: 20px;"></s:textfield>
							</div>
							<div class="form-group">
								<s:textfield label="Téléphone " id="telephone" name="medecin.telephone" class="form-control" style="margin-left: 20px; width: 100%; margin-bottom: 20px;"></s:textfield>
							</div>
								<s:hidden name="modif" id="modif"></s:hidden>	
							<p><span><s:submit value="ENREGISTRER" id="btnSave" class="btn btn-success btnSave" style="margin-top: 20px;"></s:submit></span>
							<span><s:reset value="FERMER" id="btnFermer" class="btn btn-danger btnFermer" data-dismiss="modal"></s:reset></span></p>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	$('.btnEdit').on("click", function(){
		$("#idMed").val($(this).attr("data-id"));
		$("#nom").val($(this).attr("data-nom"));
		$("#prenom").val($(this).attr("data-prenom"));
		$("#specialite").val($(this).attr("data-specialite"));
		$("#nationalite").val($(this).attr("data-nationalite"));
		$("#adresse").val($(this).attr("data-adresse"));
		$("#telephone").val($(this).attr("data-telephone"));
		$("#modif").val("true");
	})
	$(".btnFermer").on("click", function(){
		$("#nom").val("");
		$("#prenom").val("");
		$("#specialite").val("");
		$("#nationalite").val("");
		$("#adresse").val("");
		$("#telephone").val("");
		$("#modif").val("false");
	});
	
	$(".btnSave").on("click", function(){
		$("#nom").val("");
		$("#prenom").val("");
		$("#specialite").val("");
		$("#nationalite").val("");
		$("#adresse").val("");
		$("#telephone").val("");
		$("#modif").val("false");
	});
</script>

</html>