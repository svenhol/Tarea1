<%-- 
    Document   : ingreso_cliente
    Created on : 07-may-2014, 18:40:28
    Author     : Belik
--%>

<%@ page import ="java.sql.*" %>
<%
    String nombre = request.getParameter("nombre");
    String rut = request.getParameter("rut");
    String tipo = request.getParameter("tipo_usuario");
    String admin = new String("admin");
            
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
            "BD", "BD");
    Statement st = con.createStatement();
    int i = st.executeUpdate("INSERT INTO CLIENTE(RUT, NOMBRE) VALUES ('" + rut + "','" +  nombre + "')");
    if (i>0) {
        if (tipo.equals(admin)){
            response.sendRedirect("administrator.jsp");
            }  
        else {
            response.sendRedirect("seller.jsp");
            }
    }
    else {
        out.println("Paso algo malo :c");
        //sorry, no se pasar parametros dentro de codigo java :c
        //paso algo
        //probablemente el rut
        //mandar de vuelta a ingresar cliente con el mismo nombre y pidiendo otro rut
    }
    
%>
