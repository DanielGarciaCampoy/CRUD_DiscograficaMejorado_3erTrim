
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            try {
                
                //conectarse a la bbdd
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/discografica","root", "");
                Statement s = conexion.createStatement();
                
                request.setCharacterEncoding("UTF-8");
                
                session.removeAttribute("usuarioRegistrado");
                session.removeAttribute("contrRegistrado");
                
                response.sendRedirect("index.jsp");
            
            } catch (Exception e) {
                out.print(e);
            }
        %>
        
    </body>
</html>
