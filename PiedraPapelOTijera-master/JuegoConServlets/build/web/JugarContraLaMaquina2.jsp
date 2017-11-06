<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Piedra, Papel o Tijeras</title>
    </head>
    <body>
        
        <%
          //Genero la jugada
            String jugadaAleatoria = Partida.generarJugadaAleatoria();
            String nombreJugador = request.getParameter("nombreJugador");
            String jugadaJugador = request.getParameter("jugada");
            Partida par = new Partida(nombreJugador, jugadaJugador, "Maquina", jugadaAleatoria);
            String ganador = par.getGanador();
            String resultado = par.resultado();
            %>
            <h1 align="center"><%=par.resultado() %></h1>
            
    </body>
</html>
