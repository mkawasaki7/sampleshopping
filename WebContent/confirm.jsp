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
<h3>下記の内容で注文を行いますか？</h3>
<h3>ご注文商品</h3>

<c:if test="${not empty cart.items}">
<table border="1">
<tr><td>商品番号</td><td>商品名</td><td>単価(税込)</td>
    <td>個数</td><td>小計</td></tr>

<c:forEach items="${cart.items}" var="item">
<tr>
	<td align="center">${item.value.code}</td>
	<td align="center">${item.value.name}</td>
	<td align="right">${item.value.price}円</td>
	<td align="right">${item.value.quantity}</td>
	<td align="right">${item.value.price * item.value.quantity}円</td>
</tr>
</c:forEach>
<tr><td align="right" colspan="6">総計：${cart.total}円</td></tr>
</table>

<h3>お客様情報</h3>

<form action="/shopping/OrderServlet?action=order" method="post">
	<table border="1">
	<tr>
	<td>お名前</td><td>${customer.name}</td>
	</tr>
	<tr>
	<td>住所</td><td>${customer.address}</td>
	</tr>
	<tr>
	<td>電話番号</td><td>${customer.tel}</td>
	</tr>
	<tr>
	<td>e-mail</td><td>${customer.email}</td>
	</tr>
	</table><br>
	<input type="submit" value="この内容で注文">
</form>

</c:if>

</body>
</html>