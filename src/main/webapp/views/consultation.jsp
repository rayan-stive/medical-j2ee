<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<title>Cabinet Medical | Consultation</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="UTF-8" />
	<!-- Link -->
	<link rel="stylesheet" href="assets/css/consultation.css" />
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
	
	<!-- Script -->
	<script type="text/javascript" src="assets/js/script.js"></script>
	<script src="assets/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/popper.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
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
	    <h1 style="font-family: monospace; height: 20px;">CONSULTATION</h1>      
	</div>
	<div class="row">
		<div class="col-sm-2 text-center" style="border-right: 1px groove;">
			<div class="card bg-info text-white text-center">
				<h5 class="card-body">Utilisateur</h5>
			</div>
			<br>
			<img src="assets/image/avatar.png" class="rounded-circle" alt="Cinque Terre" width="80" height="80"> 
			<br><br>
			<h5>rayan.stive19@gmail.com</h5>
			<br>
		</div>
		<div class="col-sm-10">
			<div class="card bg-info text-white text-center">
				<h5 class="card-body">Liste des consultations</h5>
			</div>
			<br>
			<div>
				<table class="table table-bordered">
					<tr class="text-center">
						<th>Identifiant</th>
						<th>Patient</th>
						<th>Medecin</th>
						<th>Date</th>
						<th>Motif</th>
						<th>Depuis</th>
						<th>Historique</th>
						<th>Actions</th>
					</tr>
					<s:iterator value="consultations">
					<tr>					
						<td  class="text-center" ><s:property value="idCons"/></td>
						<td><s:property value="nom" /></td>
						<td><s:property value="nomMed" /></td>
						<td><s:property value="date" /></td>
						<td><s:property value="motif" /></td>
						<td><s:property value="depuis" /></td>
						<td><s:property value="histoire" /></td>						
						<s:url namespace="/" action="deleteConsultation" var="delete">
							<s:param name="idCons">
								<s:property value="idCons" />
							</s:param>
						</s:url>
						<s:url namespace="/" action="editConsultation" var="modiffier">
							<s:param name="idCons">
								<s:property value="idCons"/>
							</s:param>
						</s:url>										
						<td class="text-center">
							<button class="btn btn-success btnOrdonnance" data-toggle="modal" data-target="#modalOrdonnance">Ordonnance</button>
							<button type="button" class="btn btn-info btnEdit" id="btnEdit" data-toggle="modal" data-target="#myModal" data-id="<s:property value="idCons" />" data-nom="<s:property value="nom" />" 
							 data-nomMed="<s:property value="nomMed" />" data-date="<s:property value="date" />" data-motif="<s:property value="motif"/>" data-depuis="<s:property value="depuis" />" data-histoire="<s:property value="histoire"/>" >Modifier</button>
							 <s:a href="%{delete}" class="btn btn-danger">Supprimer</s:a>	
						</td>				
					</tr>
					</s:iterator>
				</table>
			</div>
		</div>
	</div>
	<!-- Modale EDIT -->
	<div class="modal fade" id="myModal">
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
					<s:textfield label="Identifiant " id="idCons" name="consultation.idCons" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
				</div>
				<div class="form-group">
					<s:textfield label="Patient " name="consultation.nom" id="nomCons" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
				</div>
				<div class="form-group">
					<s:textfield label="Medecin " name="consultation.nomMed" id="nomMed" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
				</div>
				<div class="form-group">
					<s:textfield label="Date " name="consultation.date" type="date" id="date" class="form-control" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
				</div>
				<div class="form-group">
					<s:textfield label="Motif " name="consultation.motif" class="form-control" id="motif" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
					
				</div>
				<div class="form-group">
					<s:textfield label="Depuis " name="consultation.depuis" class="form-control" id="depuis" style="margin-left: 20px; width: 125%; margin-bottom: 20px;"></s:textfield>
	
				</div>
				<div class="form-group">
					<s:textfield label="Histoire maladie " name="consultation.histoire" class="form-control" id="histoire" style="margin-left: 20px; width: 125%; margin-bottom: 30px;"></s:textfield>
					<s:hidden name="modifConsultation" id="modifConsultation"></s:hidden>
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
	<!-- End Modale EDIT-->
	<!-- Modale ORDONNANCE -->
	<div class="modal fade" id="modalOrdonnance" >
		<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header" style="margin: 0px;">
				<div class="card bg-info text-white text-center" style="width: 100%;">
					<div class="card-body">
						<h5 class="card-title">Ordonnance</h5>
					</div>
				</div>
			</div>
			<div class="modal-body" style="margin-left: 25px; margin-right: 25px;"> 
			<div class="card">
			<div class="card-body">		
				<form action="">
					<div class="row">
						<div class="col-sm-6">
							<label for="medicament">Medicament :</label>
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="medicament" name="medicament">	
								<div class="input-group-append">
									<button class="btn btn-outline-primary" type="button" id="btnMedicament" data-toggle="modal" data-target="#modalMedicament">+</button>  
								</div>
							</div>
						</div>
						<div class="col-sm-6 form-group">
							<label for="nombre">Nombre/Jour :</label>
							<input type="number" class="form-control" id="nombre" name="nombre">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="prise">Prise :</label>
							<input type="text" class="form-control" id="prise" name="prise">
						</div>
						<div class="col-sm-6 form-group">
							<label for="quant">Quand :</label>
							<select type="text" class="form-control" id="quand" name="quand">
								<option>Avant</option>
								<option>Après</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="periode">Periode :</label>
							<input type="text" class="form-control" id="periode" name="periode">
						</div>
						<div class="col-sm-6 form-group">
							<label for="remarque">Remarque :</label>
							<input type="text" class="form-control" id="remarque" name="remarque">
						</div>
					</div>
				</form>
				</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-4">
						<button type="button" id="add" class="btn btn-info" style="width: 100%;">Préscrirt</button>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-info" style="width: 100%;" onclick="window.print()">Imprimer</button>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-info" style="width: 100%;" data-dismiss="modal" id="btnFermerOrd">Fermer</button>
					</div>
				</div>
				<br>
				<table class="table table-bordered table-striped" id="dynamic">
					<thead>
					<tr class="bg-secondary text-white text-center">
						<th>Medicament</th>
						<th>Prise</th>
						<th>Periode</th>
						<th>Nombre/Jour</th>
						<th>Quand</th>
						<th>Remarque</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		</div>
	</div>
	<!-- End Modale ORDONNANCEs -->
	
	<!-- Modale Medicament -->
	<div class="modal fade" id="modalMedicament">
	 	<div class="modal-dialog modal-dialog-centered">
	 		<div class="modal-content bg-secondary">
	 			<div class="modal-header">
	 				<div class="card bg-info text-white text-center" style="width: 100%;">
						<div class="card-body">
							<h5 class="card-title">Medicament</h5>
						</div>
					</div>
	 			</div>
	 			
	 			<div class="modal-body">
	 				<h5 class="text-center text-white">Chercher :</h5>
	 				<input type="text" class="form-control" id="chercher">
	 				<br>
	 				<select multiple class="form-control" id="mySelect" name="mySelect">
				        <option>Paracetamol, 500mg, comprimer</option>
				        <option>Ibiprophène, 500mg, comprimer</option>
				        <option>Eloxatine, 200mg, solution à dulier</option>
				        <option>Zadryl, 1mg, solution buvable</option>
				        <option>Alfacephal, 125MG, Poudre pour suspension buvable</option>
			      	</select>
	 			</div>
	 			<div class="modal-footer">
	 				<center><button class="btn btn-success btnChoisir" data-dismiss="modal" id="btnChoisir">Choisit le medicament</button></center>
	 			</div>
	 		</div>
	 	</div>
	</div>
	<!-- End Modale Medicament -->
	</div>
</body>
<script>
	$(function(){
		$(".btnEdit").on("click", function(){			
			$("#idCons").val($(this).attr("data-id"));
			$("#nomCons").val($(this).attr("data-nom"));
			$("#nomMed").val($(this).attr("data-nomMed"));
			$("#date").val($(this).attr("data-date"));
			$("#motif").val($(this).attr("data-motif"));
			$("#depuis").val($(this).attr("data-depuis"));
			$("#histoire").val($(this).attr("data-histoire"));
			$("#modifConsultation").val(true);
			
			$("#idCons").attr('readOnly',true);
		});
		
		//table dinamyc
		var i = 1;
		$("#add").click(function(){
		
			var medicament = $('#medicament').val();
			var prise = $('#prise').val();
			var periode = $('#periode').val();
			var nombre = $('#nombre').val();
			var quand = $('#quand').val();
			var remarque = $('#remarque').val();
			
			$('#dynamic tbody:last-child').append(
				'<tr>'+
					'<td>'+medicament+'</td>'+
					'<td>'+prise+'</td>'+
					'<td>'+periode+'</td>'+
					'<td>'+nombre+'</td>'+
					'<td>'+quand+'</td>'+
					'<td>'+remarque+'</td>'+
				'</tr>'
			);
			
			$('#medicament').val("");
			$('#prise').val("");
			$('#periode').val("");
			$('#nombre').val("0");
			$('#remarque').val("");
		});
		$(".btnOrdonnance").on("click", function(){
			$("#nombre").val("0");	
		});
		
		$(".btnChoisir").on("click", function(){
			var med = $("#mySelect").val();
			$("#medicament").val(med);	
			$("#chercher").val("");
		});
		
		$("#chercher").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#mySelect option").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		 });
		$("#btnFermerOrd").on("click", function(){
			$('#medicament').val("");
			$('#prise').val("");
			$('#periode').val("");
			$('#nombre').val("0");
			$('#remarque').val("");
			
			var medicament = $('#medicament').val();
			var prise = $('#prise').val();
			var periode = $('#periode').val();
			var nombre = $('#nombre').val();
			var quand = $('#quand').val();
			var remarque = $('#remarque').val();
			
			$('#dynamic').val("");
		});
	});
</script>
</html>