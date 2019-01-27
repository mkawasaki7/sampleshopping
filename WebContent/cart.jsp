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
<h3>現在のカートの中身</h3>

<c:if test="${empty cart.items}">
現在、カートは空です。
</c:if>

<c:if test="${not empty cart.items}">
<table border="1">
<tr><td>商品番号</td><td>商品名</td><td>単価(税込)</td>
    <td>個数</td><td>小計</td><td>削除</td></tr>

<c:forEach items="${cart.items}" var="item">
<tr>
	<td align="center">${item.value.code}</td>
	<td align="center">${item.value.name}</td>
	<td align="right">${item.value.price}円</td>
	<td align="right">${item.value.quantity}</td>
	<td align="right">${item.value.price * item.value.quantity}円</td>
<td>
<form action="/shopping/CartServlet?action=delete" method="post">
	<input type="hidden" name="item_code" value="${item.value.code}">
	<input type="submit" value="削除">
</form>
</td>
</tr>
</c:forEach>
<tr><td align="right" colspan="6">総計：${cart.total}円</td></tr>
</table>

<form action="/shopping/OrderServlet?action=input_customer" method="post">
	<input type="submit" value="注文する">
</form>
</c:if>

</body>
</html>