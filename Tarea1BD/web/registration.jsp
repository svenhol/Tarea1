<%-- 
    Document   : registration
    Created on : 07-may-2014, 16:34:16
    Author     : Belik
--%>

<%@ page import ="java.sql.*" %>
<%
    String nombre = request.getParameter("nombre");
    String rut = request.getParameter("rut");
    String pass = request.getParameter("pass");
    String rpass = request.getParameter("rpass");
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
            "BD", "BD");
    Statement st = con.createStatement();
    //ResultSet rs;
    if(pass.equals(rpass)){
        st.executeUpdate("INSERT INTO USUARIO(RUT, CONTRASENA, NOMBRE, TIPO, COMISION) VALUES ('" + rut + "','" + pass + "','" + nombre + "', 'Vendedor', 0)");
    }
    response.sendRedirect("administrator.jsp");
%>