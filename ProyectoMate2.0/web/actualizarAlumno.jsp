<%-- 
    Document   : actualizarAlumno
    Created on : 02/12/2016, 01:04:11 PM
    Author     : Lupita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información</title>
        <link rel="stylesheet" type="text/css" href="estilos.css"> 
        <link rel="icon" type="image/png" href="imagenes/icono.png" />
    </head>
    <body>
        <%@page import="java.sql.*" %>
        
        <%
            
            String direccion = request.getParameter("direccion");
            int telefono = Integer.parseInt(request.getParameter("telefono"));
            int celular = Integer.parseInt(request.getParameter("celular"));
            String correo = request.getParameter("correo");
            String nombAp = request.getParameter("nomApo");
            int telAp = Integer.parseInt(request.getParameter("telApo"));
            
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            
            Class.forName("com.mysql.jdbc.Driver");

            try {
                                
                Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_alumnos", "root", "");
                
                PreparedStatement c_preparada = miConexion.prepareStatement("UPDATE alumnos SET direccion=?, telefonocasa=?, "
                        + "telefonocelular=?, correo=?, nombreapoderado=?,telefonoapoderado=? WHERE codigoalumno=?");
                
                c_preparada.setString(1, direccion);
                c_preparada.setInt(2, telefono);
                c_preparada.setInt(3, celular);
                c_preparada.setString(4, correo);
                c_preparada.setString(5, nombAp);
                c_preparada.setInt(6, telAp);
                
                c_preparada.setInt(7,codigo);
                            
                int exito = c_preparada.executeUpdate();
                
                if(exito!=0){
                    out.print("<div class='mensaje'>La información ha sido actualizada correctamente</div>");
                    out.print("<br><center><a href='principal.jsp'>Volver</a></center>");
                } else {
                    out.print("<div>Ha ocurrido un error al momento de actualizar</div>");
                    out.print("<br><center><div class='boton1'><a href='datosAlumnos.jsp'>Volver</a></div></center>");
                }
                
            }catch(Exception e){
                    out.print(e);
              }


        %>
        
    </body>
</html>
