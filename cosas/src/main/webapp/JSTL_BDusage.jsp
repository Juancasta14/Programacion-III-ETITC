<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conection BD</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .content {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .footer {
            margin-top: 20px;
            font-size: 0.8em;
            color: #666;
        }
        li {
    margin: 10px 0;
    padding: 5px;
    list-style-type: none; 
}
    </style>
</head>
<body>
<h2>Conectar la base de datos utilizando JavaServer Pages Standard Tag Library (JSTL) </h2>

  <sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/parcial3BD"
                   user="root" password="Juanfelipe9902*"/>
                   
        <sql:query dataSource="${dbSource}" var="ProData">
      SELECT producto, precio, cantidad FROM productos;
</sql:query>  

                 
<c:forEach var="producto" items="${ProData.rows}">
 <li> 
 							<b>Producto:</b> <c:out value="${producto.producto}" /><br>
                            <b>PRECIO: $</b> <c:out value="${producto.precio}" /> <br>
                            <b>CANTIDAD:</b> <c:out value="${producto.cantidad}" /> unidades<br>
                            </li>
 </c:forEach>
 <div class="footer">
        <p>&copy; 2024 Realizado por Juan David Castañeda Tenjo</p>
    </div>
</body>
</html>