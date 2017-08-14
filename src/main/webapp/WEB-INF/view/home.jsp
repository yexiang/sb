<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<title></title>
<style>
</style>
</head>
<body>
<ol>
<c:forEach var="product" items="${name}">
<li>${product.name}</li>
</c:forEach>
</ol>
</body>
</html>