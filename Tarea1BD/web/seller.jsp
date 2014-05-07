<%-- 
    Document   : seller
    Created on : 07-may-2014, 15:54:38
    Author     : Belik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELLER</title>
    </head>
    <body>
        <center>
            <table border="1" width="15%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Seller Menu</th>
                    </tr>
                </thead>
            </table>
        </center>
        <form method="post" action="ingresar_cliente.jsp">
            <center>
                <input type="submit" value="Ingresar Cliente" name="ingresar_cliente" />
            </center>
        </form>
        <form method="post" action="ingresar_venta.jsp">
            <center>
                <input type="submit" value="Ingresar Venta" name="ingresar_venta" />
            </center>
        </form>
        <form method="post" action="ver_ventas.jsp">
            <center>
                <input type="submit" value="Ver Ventas a Cliente" name="ver_ventas" />
            </center>
        </form>
        <form method="post" action="mis_ventas.jsp">
            <center>
                <input type="submit" value="Mis Ventas" name="mis_ventas" />
            </center>
        </form>
    </body>
</html>
