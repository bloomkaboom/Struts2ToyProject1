<%-- 
    Document   : index
    Created on : 10 3, 21, 8:38:38 PM
    Author     : Bloom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <script  type="text/javascript">
            function loadXMLDoc {
                var xmlhttp;
                var k = document.getElementById("email").value;
                var urls = "pass.jsp?var="+k;
                if(window.XMLHttpRequest) {
                    xmlhttp = new XMLHttpRequest();
                }else {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function() {
                    if(xmlhttp.readyState=4) {
                        document.getElementById("err").innerHTML=xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET",urls,true);
                xmlhttp.send();
            }
        </script>
    </head>
    <body style="background-color: lightcyan">
        <div style="margin-left: 40%; margin-top: 6%">
            <h1>Coder-Bloom</h1>
        <h1>Registration Page</h1>
        <s:form action="Register">
            <s:textfield name="fname" label="First Name" />
            <s:textfield name="lname" label="Last Name" />
            <s:textfield name="email" label="Email" id="email" onkeyup="loadXMLDoc()" />
            <s:password name="pword" label="Password" />
            <s:submit value="Submit" />
        </s:form>
        </div>       
    </body>
</html>
