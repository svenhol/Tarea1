<%-- 
    Document   : login
    Created on : 07-may-2014, 12:26:33
    Author     : Belik
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
            "BD", "BD");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from USUARIO where nombre='" + userid + "' and contrasena='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        if ("Administrador".equals(rs.getString("TIPO"))) {
            response.sendRedirect("administrator.jsp");
        }
        else {
            response.sendRedirect("seller.jsp");
        }
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
