<%@taglib uri="/struts-tags" prefix="s"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cabinet Medical | Patient</title>
</head>
<body>
<div>
  <s:form action="save" method="post">
  	<s:textfield label="Id" name="patient.id"></s:textfield>
  	<s:textfield label="Nom" name="patient.nom"></s:textfield>
  	<s:textfield label="Prenom" name="patient.prenom"></s:textfield> 
    <s:textfield label="Age" name="patient.age"></s:textfield>
    <s:textfield label="Adresse" name="patient.adresse"></s:textfield>
    <s:textfield label="Telephone" name="patient.telephone"></s:textfield>
    <s:hidden name="editMode"></s:hidden>
    
    <s:submit value="Save"></s:submit>
  </s:form>
 </div>
 <div>
 	<table>
 		<tr>
 			<th>Id</th><th>Nom</th><th>Prenom</th><th>Age</th><th>Adresse</th><th>Telephone</th>
 		</tr>
 		<s:iterator value="patients">
 			<tr>
 				<td><s:property value="id"/></td>
 				<td><s:property value="nom"/></td>
 				<td><s:property value="prenom"/></td>
 				<td><s:property value="age"/></td>
 				<td><s:property value="adresse"/></td>
 				<td><s:property value="telephone"/></td>
 				<s:url namespace="/" action="delete" var="lien1">
 					<s:param name="id">
 						<s:property value="id"/>
 					</s:param>
 				</s:url>
 				<s:url namespace="/" action="edit" var="lien2">
 					<s:param name="id">
 						<s:property value="id"/>
 					</s:param>
 				</s:url>
 				<td><s:a href="%{lien1}">delete</s:a></td>
 				<td><s:a href="%{lien2}">edit</s:a></td>
 			</tr>
 		</s:iterator>
 	</table>
 </div>
</body>
</html>