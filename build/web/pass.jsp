<%-- 
    Document   : pass
    Created on : 10 4, 21, 12:40:54 AM
    Author     : Bloom
--%>
<%@page import="java.io.*, java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sn = request.getParameter("var");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/struts2video1", "root", "");
    PreparedStatement pst = con.prepareStatement("SELECT * FROM login_table WHERE email='"+sn+"'");
    ResultSet rs = pst.executeQuery();
    if(rs.next()) {
        out.println("<font color=red>");
        out.println("Email Already Taken");
        out.println("</font>");
    }else {
        out.println("<font color=green>");
        out.println("Email Available");
        out.println("</font>");
    }
    rs.close();
    pst.close();
    con.close();
%>
