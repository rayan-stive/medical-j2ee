<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>

	<title>Cabinet Medical | Patient</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="UTF-8" />
	<!-- Link -->
	<link rel="stylesheet" href="assets/css/patient.css" />
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
	
	<!-- Script -->
	<script type="text/javascript" src="assets/js/script.js"></script>
	<script src="assets/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/popper.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script>
		$(function(){
			$(".btnCons").on("click", function(){
				$("#nomCons").val($(this).attr("data-nom")+" "+$(this).attr("data-prenom"));
				$("#nomCons").attr('readOnly', true);
				
				$("#nomMed").val($("#utilisateur").text());
				$("#nomMed").attr('readOnly',true);

			});
		});
	</script>
</head>
<body>

	<div class="container-fluid">
	<nav class="navbar navbar-expand-lg nav-tabs navbar-light" style="margin-bottom: 10px;">
	<div class="container-fluid">
		
		<a class="navbar-brand" ><img src="assets/image/logo.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="70"> e-Medicale.fr</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ml-auto ">
				<li class="nav-item"><s:url namespace="/" action="index" var="accueil"></s:url>
					<s:a class="nav-link" href="%{accueil}">ACCUEIL</s:a>
				</li>
				
				<li class="nav-item"><s:url namespace="/" action="patient" var="lien1"></s:url> 
					<s:a class="nav-link" href="%{lien1}">PATIENT</s:a></li>
				<li class="nav-item"><s:url namespace="/" action="medecin" var="lien2"></s:url>
					<s:a class="nav-link" href="%{lien2}">MEDECIN</s:a>
				</li>
		 		<li class="nav-item"><s:url namespace="/" action="consultation" var="lien3" ></s:url>
		 			<s:a class="nav-link" href="%{lien3}" >CONSULTATION</s:a>
		 		</li>
		 		<li class="nav-item">
					<s:a class="nav-link">SERVICE</s:a>
				</li>
		 		<li class="nav-item">
		 			<s:a class="nav-link ">CONTACT</s:a>
		 		</li>
			</ul>
		</div>
		</div>
	</nav>
	<div class="jumbotron jumbotron-fluid text-center" style="margin-bottom: 10px;">
	    <h1 style="font-family: monospace; height: 20px;">PATIENT</h1>      
	</div>
	
	<div class="row" style="margin-top: 0px;">
		<div class="col-sm-2 text-center">
			<div class="card bg-info text-white text-center">
				<h5 class="card-body">Utilisateur</h5>
			</div>
			<br>
			<img src="assets/image/avatar.png" class="rounded-circle" alt="Cinque Terre" width="80" height="80"> 
			<br><br>
			<h5 id="utilisateur">rayan.stive19@gmail.com</h5>
		</div>
		<div class="col-sm-7">
		<div class="card bg-info text-white text-center">
			<h5 class="card-body">Liste des Patients</h5>
		</div>
		<br>
		<table class="table table-striped table-bordered " >
			<tr class="text-center">
				<th>Identifiant</th>
				<th>Nom</th>
				<th>Prenom</th>
				<th>Age</th>
				<th>Adresse</th>
				<th>Telephone</th>
				<th>Actions</th>
			</tr>
			<s:iterator value="patients">
				<tr>
					<td class="text-center"><s:property value="id" /></td>
					<td><s:property value="nom" /></td>
					<td><s:property value="prenom" /></td>
					<td><s:property value="age" /></td>
					<td><s:property value="adresse" /></td>
					<td><s:property value="telephone" /></td>
					<s:url namespace="/" action="delete" var="lien1">
						<s:param name="id">
							<s:property value="id" />
						</s:param>
					</s:url>
					<s:url namespace="/" action="edit" var="lien2">
						<s:param name="id">
							<s:property value="id" />
						</s:param>
					</s:url>
					<td class="text-center">
					<button class="btn btn-success btnCons" id="btnCons" data-toggle="modal" data-target="#modalConsultation" data-nom="<s:property value="nom" />"  data-prenom="<s:property value="prenom" />" >Consulter</button>
					<s:a href="%{lien2}" class="btn btn-info" style=""><span>Modifier</span></s:a>
					<s:a href="%{lien1}" class="btn btn-danger" style="">Supprimerr</s:a>
					
					</td>
				</tr>
			</s:iterator>
		</table>
		</div>
		<div class="col-sm-3">
		<div class="card bg-info text-white text-center">
			<h5 class="card-body">Nouveau Patient</h5>
		</div>
		<br>
			<div class="container-fluid">
			<s:form action="save" method="post">
				<div class="form-group">
					<s:textfield label="Identifiant " name="patient.id" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
				</div>
				<div class="form-group">
					<s:textfield label="Nom " name="patient.nom" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"  ></s:textfield>
				</div>
				<div class="form-group">
					<s:textfield label="Prenom " name="patient.prenom" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					
				</div>
				<div class="form-group">
					<s:textfield label="Age " name="patient.age" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					
				</div>
				<div class="form-group">
					<s:textfield label="Adresse " name="patient.adresse" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
				
				</div>
				<div class="form-group">
					<s:textfield label="Téléphone " name="patient.telephone" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					<s:hidden name="editMode"></s:hidden>
		
				</div>
					<s:submit value="ENREGISTRER" class="btn btn-success" style="width:30%; position: absolute; float: left; margin-left:0px; margin-right: 0px;"></s:submit>
					<s:reset value="ANNULER" class="btn btn-info" style="width:44%; float: right; margin-left: 0px; margin-right: 0px;"></s:reset>
			</s:form>
			</div>		
		</div>
	</div>
	<!-- Fin du row -->
	
	<!-- Debut modale -->
	
	<div class="modal fade" id="modalConsultation">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="card bg-info text-white text-center" style="width: 100%;">
						<div class="card-body">
							<h5 class="card-tittle">Traiter le cas</h5>
						</div>		
					</div>				
				</div>
			<div class="text-centered">			
				<div class="modal-body">
					<s:form action="saveConsultation" method="post" style="margin-left: 12px;" >
					<div class="form-group">
						<s:textfield label="Identifiant " name="consultation.idCons" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					</div>
					<div class="form-group">
						<s:textfield label="Patient " name="consultation.nom" id="nomCons" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					</div>
					<div class="form-group">
						<s:textfield label="Medecin " name="consultation.nomMed" id="nomMed" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					</div>
					<div class="form-group">
						<s:textfield label="Date " name="consultation.date" type="date" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					</div>
					<div class="form-group">
						<s:textfield label="Motif " name="consultation.motif" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
						
					</div>
					<div class="form-group">
						<s:textfield label="Depuis " name="consultation.depuis" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
		
					</div>
					<div class="form-group">
						<s:textfield label="Histoire maladie " name="consultation.histoire" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 30px;"></s:textfield>
						<s:hidden name="editMode"></s:hidden>
					</div>
					<div>
						
						<s:submit value="ENREGISTRER" class="btn btn-success" style="width:30%; position: absolute; float: left; margin-right: 0px;"></s:submit>
						<s:reset value="FERMER" class="btn btn-danger" data-dismiss="modal" style="width:44%; float: right; margin-left: 0px; margin-right: 0px;"></s:reset>
					</div>
					
					</s:form>
				</div>					
			</div>
			</div>
		</div>
	</div>
	<!-- Fin du modal -->
	</div>
   	<!-- Fin de contenu du page -->
</body>
</html>