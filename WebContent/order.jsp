<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome shopping!</title>
</head>
<body>

<jsp:include page="/menu.jsp" /><br>
<h3>ご注文ありがとうございました。</h3>
お客様の注文番号は
<h3><font color="red">${orderNumber}</font></h3>
になります。

</body>
</html>