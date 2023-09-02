<%-- 
    Document   : pagina2
    Created on : 1/09/2023, 10:58:37 a. m.
    Author     : camil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>resultado</title>
        <<link rel="stylesheet" href="style.css" type="text/css"/>
    </head>
    <body>
        <%
        int horas, perros, tamañoP;
        float costo=0, costoT=0;
        perros=(request.getParameter("perritos") !=null) ? Integer.parseInt(request.getParameter("perritos")) : 0;
        horas=(request.getParameter("hora") !=null) ? Integer.parseInt(request.getParameter("horas")) : 0;
        for (int i = 1; i <= perros; i++) {
            tamañoP=(request.getParameter("tamañoP") !=null) ? Integer.parseInt(request.getParameter("tamañoP")) : 0;
           if (tamañoP==1) {
             costo=horas*10000;
           } if (tamañoP==2) {
                costo=horas*5000;
            } if (tamañoP==3) {
                costo=horas*3000;
            }
            costoT+=costo;
        }
        if (perros>1) {
            costoT=(float)(costoT-(costoT*0.1));
        }
        %>
        
        <h2>Resultado</h2>
        <h4>Total costo: $<%= costoT %></h4>
        <form action="index.html" method="post">
            <input class="boton" type="submit" value="Regresar">
        </form>
    </body>
</html>
