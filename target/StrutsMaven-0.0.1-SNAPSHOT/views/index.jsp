<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Cabinet Medical | Index</title>
</head>
<body>
  <s:url namespace="/" action="patient" var="lien1"></s:url>
  <s:a href="%{lien1}">Patient</s:a>
</body>
</html>