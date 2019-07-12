<%--
  Created by IntelliJ IDEA.
  User: wxt
  Date: 2019-07-11
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%--%>
    <%--ServletRequestWrapper param1 = application.getAttribute("p1")--%>
<%--%>--%>

<form action="./suc" method="post">
    <div style="text-align: center;">Registration form</div><br>
    <%
        String a1 = (String) application.getAttribute("p1");
        String a2 = (String) application.getAttribute("p2");
        String a3 = (String) application.getAttribute("p3");
        if(a1.length()==0)
            out.print("<font color=red>you must enter a First Name:</font>");
        else
            out.println("First Name:");
    %>
    <input type="text" name=param1 value="<%= a1 %>"><br>
    <%
        if(a2.length()==0)
            out.print("<font color=red>you must enter a Last Name:</font>");
        else
            out.println("Last Name:");
    %>
    <input type="text" name=param2 value="<%= a2 %>"><br>
    <%
        if(a3.length()==0)
            out.print("<font color=red>you must enter a Email Address:</font>");
        else
            out.println("Email Address:");
    %>
    <input type="text" name=param3 value="<%= a3 %>"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
