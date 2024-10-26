<html>
<body>

<%
    java.time.LocalTime time = java.time.LocalTime.now();
    int hours = time.getHour();
    if (hours < 12) {
        out.println("<h1>Good morning, [Your Name]. Welcome to COMP367</h1>");
    } else {
        out.println("<h1>Good afternoon, [Your Name]. Welcome to COMP367</h1>");
    }
%>

</body>
</html>
