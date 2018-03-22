<%-- 
    Document   : datosAlumnos
    Created on : 30/06/2016, 10:03:10 AM
    Author     : Lupita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos de Alumnos</title>
        <link rel="stylesheet" type="text/css" href="estilos.css"> 
        <link rel="icon" type="image/png" href="imagenes/icono.png" />
        <style>
            .cajatexto2{
                width: 280px;
                height: 18px;
                margin: 0px 20px 0px 80px;
                border: 2px rgba(0,29,51, 0.6) solid;
                border-radius: 7px;
                padding: 8px;
            }
        </style>
    </head>
    <body>
        <%@page import="conexion.*" %>
        <%@page import="java.sql.*" %>
                
        <jsp:include page="principal.jsp"></jsp:include>
        <br>
        <%
            int codigo = Integer.parseInt(request.getParameter("codigo"));

            String codA = "";
            String nomA = "";
            String apeA = "";
            String dni = "";
            String dir = "";
            String tel = "";
            String cel = "";
            String email = "";
            String nomAp = "";
            String telAp = "";

            Class.forName("com.mysql.jdbc.Driver");

            try {

                Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_alumnos", "root", "");

                PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM alumnos WHERE codigoAlumno=?");

                c_preparada.setInt(1, codigo);

                ResultSet rs = c_preparada.executeQuery();

                if (rs.next()) {

                    codA = "" + rs.getInt("codigoalumno");
                    nomA = rs.getString("nombres");
                    apeA = rs.getString("apellidos");
                    dni = "" + rs.getString("dni");
                    dir = rs.getString("direccion");
                    tel = "" + rs.getInt("telefonocasa");
                    cel = "" + rs.getInt("telefonocelular");
                    email = rs.getString("correo");
                    nomAp = rs.getString("nombreapoderado");
                    telAp = "" + rs.getInt("telefonoapoderado");
                    
                    
                    out.print("<center><h3>Información del Alumno</h3></center>");
                    //Actualizar Alumno
                    out.print("<form  action='actualizarAlumno.jsp' method='post'>");
                    out.print("<center><table class='tabla'>");
                    out.print("<tr>");
                    out.print("<td>Codigo:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + codA + "' readonly='readonly' name='codigo'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Nombre:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + nomA + "'readonly='readonly' name='nombre'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Apellido:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + apeA + "'readonly='readonly' name='apellido'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>DNI:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + dni + "'readonly='readonly' name='dni'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Direccion:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + dir + "' pattern='{60}' name='direccion'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Telefono Alumno:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + tel + "' pattern='[0-9]{7}' name='telefono'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Celular Alumno:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + cel + "' pattern='[0-9]{9}' name='celular' /></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Correo:  </td>");
                    out.print("<td><input class='cajatexto2' type='email' value='" + email + "'name='correo'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Nombre Apoderado:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + nomAp + "'name='nomApo'/></td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td>Telefono Apoderado:  </td>");
                    out.print("<td><input class='cajatexto2' type='text' value='" + telAp + "' pattern='[0-9]{7,9}' name='telApo'/></td>");
                    out.print("</tr>");
                    out.print("<td colspan='2'><input type='submit' name='button' value='Actualizar Datos' class='boton3'/></td>");
                    out.print("</table><center>");
                    out.print("</form>");

                } else {
                    out.println("<br><center><h4>Alumno no encontrado</h4></center>");
                }

            } catch (Exception e) {

                out.println(e);

            }

        %>     


    </body>
</html>
