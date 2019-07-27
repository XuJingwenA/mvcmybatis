<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String  baseUrl = request.getScheme()+"://"
                        +request.getServerName()+":"
                        +request.getServerPort()
                        +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<title>首页</title>
        <base href="<%=baseUrl %>">
<body>
<h2>Hello World!</h2>
<table cellpadding="0" cellspacing="0">
                <tr>
                    <td>姓名：</td>
                    <td>性别：</td>
                </tr>
                <c:forEach items="${empList}" var="emp">
                    <tr>
                        
                        <td>${emp.name}&nbsp;&nbsp;</td>
                        <td>${emp.sex}</td>
                        
                    </tr>
                </c:forEach>
            </table>
</body>
</html>