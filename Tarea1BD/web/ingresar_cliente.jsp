<%-- 
    Document   : ingresar_cliente
    Created on : 07-may-2014, 16:10:33
    Author     : Belik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String tipo = request.getParameter("tipo_usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Cliente</title>
    </head>
    <body>
        <form method="post" action="ingreso_cliente.jsp">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Ingrese Datos del Cliente</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nombre</td>
                            <td><input type="text" name="nombre" value="" /></td>
                        </tr>
                        <tr>
                            <td>Rut</td>
                            <td><input type="text" name="rut" value="" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Ingresar" /></td>
                            <input type="hidden" name = "tipo_usuario" value=<%=tipo%> />
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </center>
    </body>
</html>
