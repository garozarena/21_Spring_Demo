<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Spring 4 Security Example</title>
    </head>
    <body>
      <h3>Logged In User Detail</h3>
      <table>
        <tr><td>Name</td><td><c:out value="${user.fullName}"/></td></tr>
        <tr><td>Role</td><td><c:out value="${user.role}"/></td></tr>
        <tr><td>Country</td><td><c:out value="${user.country}"/></td></tr>
      </table>      
      <form action="<%=request.getContextPath()%>/appLogout" method="POST">
        <input type="submit" value="Logout"/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>		
      </form>    
      <a href="<%=request.getContextPath()%>/user/privada">Zona privada</a>
    </body>
</html> 