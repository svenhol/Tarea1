<%-- 
    Document   : administrator
    Created on : 07-may-2014, 15:45:15
    Author     : Belik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMINISTRATORR</title>
    </head>
    <body>
        <center>
            <table border="1" width="15%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Administrator Menu</th>
                    </tr>
                </thead>
        </center>
    <tr>
    <td>
        <form method="post" action="ingresar_vendedor.jsp">
            <center>
                <input type="submit" value="Ingresar Vendedor" name="ingresar_vendedor" />
            </center>
        </form>
    </td>
    </tr>
    <tr>
    <td>
        <form method="post" action="ingresar_cliente.jsp">
            <center>
                <input type="submit" value="Ingresar Cliente" name="ingresar_cliente" />
            </center>
        </form>
    </td>
    </tr>
    <tr>
    <td>
        <form method="post" action="administrar_productos.jsp">
            <center>
                <input type="submit" value="Administrar Productos" name="administrar_productos" />
            </center>
        </form>
    </td>
    </tr>
    <tr>
    <td>
        <form method="post" action="ingresar_compra.jsp">
            <center>
                <input type="submit" value="Ingresar Compra" name="ingresar_compra" />
            </center>
        </form>
    </td>
    </tr>
    <tr>
    <td>
        <form method="post" action="ingresar_venta.jsp">
            <center>
                <input type="submit" value="Ingresar Venta" name="ingresar_venta" />
            </center>
        </form>
    </td>
    </tr>
    <tr>
    <td>
        <form method="post" action="ver_ventas.jsp">
            <center>
                <input type="submit" value="Ver Ventas a Cliente" name="ver_ventas" />
            </center>
        </form>
    </td>
    </tr>
    </table>
    </body>
</html>
