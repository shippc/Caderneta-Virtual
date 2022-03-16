<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Caderneta Virtual</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="menuindex.jsp" flush="true"/>

        <%

            Date d = new Date();
            SimpleDateFormat strDate = new SimpleDateFormat("dd/MM/yyyy");

            out.print(strDate.format(d));

        %>
        <h1 class="text-center" id="introducao"><%out.print(strDate.format(d));%></h1>
        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
