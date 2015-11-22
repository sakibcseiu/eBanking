<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/showAllAccount">Show All Account</a><br>
<a href="${pageContext.request.contextPath}/createAccount">Create Account</a><br>
<a href="${pageContext.request.contextPath}/depositAccount">Deposit Account</a><br>
<a href="${pageContext.request.contextPath}/closeAccount">Close Account</a><br>
<a href="${pageContext.request.contextPath}/withdrawMoney">Withdraw money</a><br>
<a href="${pageContext.request.contextPath}/transferMoney">Transfer money</a><br>
<a href="${pageContext.request.contextPath}/checkBalance">Check Balance</a><br>
<a href="${pageContext.request.contextPath}/task">Show report</a><br>



<sec:authorize access="!isAuthenticated()">
<a href="${pageContext.request.contextPath}/login">login</a><br>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<a href="<c:url value='j_spring_security_logout'/>">logout</a><br>
</sec:authorize>


</body>
</html>