<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>开始上课</title>
</head>
<body>
	<h1>${student_brith }</h1>
	${ClassTitle }	
	<c:forEach items="${HomeWorkTitle }" var="hwd" varStatus="cnt">
		<h1>${hwd.homework_title }</h1>
	</c:forEach>
	
</body>
</html>
