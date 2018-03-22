<%-- 
    Document   : index
    Created on : 29/06/2016, 12:01:40 AM
    Author     : Lupita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <link rel="icon" type="image/png" href="imagenes/icono.png" />
        <title>Verificando Usuario</title>
    </head>
    <body>
        <%@page import="conexion.*" %>
        <%@page import="java.sql.*" %>
        
        <%
          String usuario = request.getParameter("usser");
          String contraseña = request.getParameter("pass");
          
        Class.forName("com.mysql.jdbc.Driver");

        try{
                Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_alumnos", "root", "");

                PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM usuarios WHERE usser=? and password=?");

                c_preparada.setString(1, usuario);
                c_preparada.setString(2, contraseña);


                ResultSet miResulset = c_preparada.executeQuery();

                if(miResulset.absolute(1)) {
                       
        %>
        <br>
        <jsp:include page='principal.jsp'></jsp:include>
                        
        <%          out.println("<div class='mensaje'>Usuario autorizado</div>");
                } else {
                        out.println("<div class='mensaje'>No existen usuarios con esos datos</div>");
                        out.println("<br><center><a href='index.html'>Volver a ingresar</a></center>");
                }

        } catch(Exception e) {

                out.println(e);

        }
        
        %>
        
    
    </body>
</html>
