<%-- 
    Document   : administrar_productos
    Created on : 07-may-2014, 16:11:47
    Author     : Belik
--%>

<%@ page import ="java.sql.*" %>
<%
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
            "BD", "BD");
    Statement recuperarProductos = con.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
    ResultSet productos = recuperarProductos.executeQuery("SELECT * FROM PRODUCTO ORDER BY id_producto ASC");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración de Productos</title>
    </head>
    <body>
        <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Lista de Productos:</th>
                    </tr>
                </thead>
                <tbody>
                    <%  
                        String formLineWOQuotes = new String("<form method=0post0 action=0editar_producto.jsp0>");
                        String formLine = formLineWOQuotes.replaceAll("0", "&quot;");
                        String buttonLineWOQuotes = new String("<input type=0submit0 value=0Editar0 name=0edicion_producto0 />");
                        String buttonLine = buttonLineWOQuotes.replaceAll("0", "&quot;");
                        String commonStartWOQuotes = new String("<input type=0hidden0 value=0");
                        String commonStart = commonStartWOQuotes.replaceAll("0", "&quot;");
                        //this is by far the most stupid thing I've ever programmed
                        String descriptionWOQuotes = new String("0 name=0descripcion0 />");
                        String description = descriptionWOQuotes.replaceAll("0", "&quot;");
                        String categoryWOQuotes = new String("0 name=0categoria0 />");
                        String category = categoryWOQuotes.replaceAll("0", "&quot;");
                        String priceWOQuotes = new String("0 name=0precio0 />");
                        String price = priceWOQuotes.replaceAll("0", "&quot;");
                        
                        while (productos.next()){
                            out.println("<tr>");
                            out.println("<td>" + productos.getInt("id_producto")    + "</td>" +
                                        "<td>" + productos.getInt("stock")          + "</td>" +
                                        "<td>" + productos.getString("descripcion") + "</td>" +
                                        "<td>" + productos.getString("categoria")   + "</td>" +
                                        "<td>" + productos.getInt("precio")         + "</td>");
                            out.println("<td>");
                            out.println(formLine);
                            out.println(buttonLine);
                            out.println(commonStart + productos.getString("descripcion") + description +
                                        commonStart + productos.getString("categoria")   + category +
                                        commonStart + productos.getInt("precio")         + price);
                            out.println("</td>");
                        }   out.println("</tr>");
        
                    %>
                </tbody>
            </table>
        </center>
        <h1>derp</h1>
        <center>
            <form method="post" action="ingresar_producto.jsp">
                <input type="submit" value="Ingresar Producto" name="ingreso_producto" />
            </form>
        </center>
    </body>
</html>
