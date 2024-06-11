<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page using JSP</title>
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
    </style>
</head>
<body>
        <h1>Realización de una pagina usando JSP</h1>
      

        <%-- Declaración de una variable y un objeto Java --%>
        <%
            String userName = request.getParameter("name");
            if (userName == null || userName.isEmpty()) {
                userName = "Juan Castaneda Tenjo";
            }
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String currentTime = sdf.format(new Date());
        %>

        <h2>Hola, <%= userName %>!</h2>
        <p>La fecha y hora actual es: <%= currentTime %></p>

        <%-- Uso de scriptlet para lógica condicional --%>
        <%
            int randomNumber = (int) (Math.random() * 100) + 1;
            if (randomNumber <= 50) {
                out.println("<p>El número aleatorio generado es menor o igual a 50: " + randomNumber + "</p>");
            } else {
                out.println("<p>El número aleatorio generado es mayor a 50: " + randomNumber + "</p>");
            }
        %>
    </div>
     <form action="welcome" target="_blank" method="get">
            <button type="submit">Welcome Servlet</button>
        </form>
        <br>
             <form action="basededatos" target="_blank" method="get">
            <button type="submit" >JSTL/BD Servlet</button>
        </form>
        
    <div class="footer">
        <p>&copy; 2024 Realizado por Juan David Castañeda Tenjo</p>
    </div>
</body>
</html>
