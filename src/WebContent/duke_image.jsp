<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String name  = request.getParameter("name");
    String imgName = request.getParameter("imgName");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert 듀크이미지 here</title>
</head>
<body>

    <br><br>
    <h1> 이름은 <%=name %> 입니다.</h1> <br><br>
    <img scr =".pro0717dd/image/<%=imgName %>"  />

</body>
</html>