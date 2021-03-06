
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Discográfica - Tabla modificada</title>
        <!--bootstrap5 css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!--codepen css-->
        <link rel="stylesheet" href="css/loginStyle.css"/>
    </head>
    <body class="bg-dark">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/discografica","root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");
            
            if (session.getAttribute("usuarioRegistrado") == null) {
                session.setAttribute("error", "No se ha iniciado sesion");
                response.sendRedirect("index.jsp");
            }
            
            String actualizacion = "UPDATE album SET "
                                + "NomAlbum='" + request.getParameter("NomAlbum")
                                + "', NomArtista='" + request.getParameter("NomArtista")
                                + "', AnoLanzamiento='" + request.getParameter("AnoLanzamiento") + "'"
                                + "WHERE CodAlbum = " + request.getParameter("CodAlbum");
            
            s.execute(actualizacion);
        %>
        <div class="login-page">
            <div class="form">
                <h2>Se ha actualizado su album correctamente:</h2>
                <button type="submit" value="Añadir" class="btn text-center"><a href="listarAlbum.jsp">Volver a listaAlbumes</a></button>
            </div>           
        </div>
        <!--bootstrap5 js-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <!--codepen js-->
        <script src="js/loginScript.js"></script>
    </body>
</html>
