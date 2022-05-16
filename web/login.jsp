<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Discografica - Inicio de Sesión</title>
        <!--bootstrap5 css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!--codepen css y propio-->
        <link rel="stylesheet" href="css/loginStyle.css"/>
    </head>
    <body class="bg-dark">            
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/discografica","root", "");
            Statement s = conexion.createStatement();
                
            request.setCharacterEncoding("UTF-8");
                
            Statement u = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM usuario");
            boolean correcto = false;
            while (listado.next()) {
                if (request.getParameter("usuario").toString().equals(listado.getString("usuario")) && request.getParameter("contrasenia").toString().equals(listado.getString("contrasenia"))) { //si es todo correcto
                    correcto = true;
                    String name = request.getParameter("usuario");
                    ResultSet miDiscog = u.executeQuery("SELECT * FROM usuario");
                    miDiscog.next();
        %>
                        <!--enlaces-->
                        <div class="login-page" id="login">
                            <div class="form">
                                <h2 class="mb-2">CRUD Discográfica</h2>
                                <h4>Hola, <b><%out.println(request.getParameter("usuario"));%></b></h4> <!--Saluda al usuario segun su nombre-->
                                <a class="btn btn-success mb-4" href="listarAlbum.jsp" role="button">Ver lista de álbumes</a>
                                <a class="btn btn-success mb-4" href="listarDiscog.jsp" role="button">Ver lista de discográficas</a>
                                <a class="btn btn-danger mb-4" href="logout.jsp" role="button">Cerrar sesión</a>
                            </div>
                        </div>
        <%
                    //establecer el usuario y contraseña
                    session.setAttribute("usuarioRegistrado", request.getParameter("usuario"));
                    session.setAttribute("contrRegistrado", request.getParameter("contrasenia"));
                        
                } //if
            } //while
            
            if (!correcto) { // si el usuario o la contrasenia son erroneas, error="Usuario o contraseña incorrectos, por favor, inténtelo de nuevo"
                session.setAttribute("error", "Usuario o contraseña incorrectos, por favor, inténtelo de nuevo");
                response.sendRedirect("index.jsp");
            }

        %>
        
        <!--bootstrap5 js-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <!--codepen js-->
        <script src="js/loginScript.js"></script>
    </body>
</html>


