<%-- 
    Document   : principal
    Created on : 29/06/2016, 02:27:00 AM
    Author     : Lupita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Busqueda de alumno</title>
        <link rel="stylesheet" type="text/css" href="estilos.css"> 
        <link rel="icon" type="image/png" href="imagenes/icono.png" />
    </head>
    <body>
         <header>
            <figure class="logo">
                <img src="imagenes/sm.png" height="100"/>
            </figure>
            <div class='tituloPrincipal'>
                <h1>Sistema de actualizaci&oacute;n de datos</h1>
            </div>
            <figure class="logo">
                <img src="imagenes/fisi.png" height="100"/>
            </figure>
        </header>
        <section>
            <form action="datosAlumnos.jsp" method="post">
                <center>
                    <table>
                        <tr>
                            <td>Ingrese Código:</td> <td><input class="cajatexto" type="text" name="codigo" value ="" pattern='[0-9]{8}' required/></td>
                        </tr>
                        <td colspan="2"><input type="submit" value="Buscar Alumno" name="button" class="boton2"/></td>

                    </table>
                </center>   
            </form>
        </section>
    </body>
</html>
