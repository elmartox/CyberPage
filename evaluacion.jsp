<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    int score = -1; // -1 significa que aún no se ha enviado
    if(request.getParameter("submitted") != null){
        score = 0;

        // Claves correctas
        String r1 = "b"; // Trigger
        String r2 = "c"; // David
        String r3 = "b"; // Netrunner = hackear
        String r4 = "a"; // Lucy
        String r5 = "c"; // Maine

        if(r1.equals(request.getParameter("p1"))) score += 2;
        if(r2.equals(request.getParameter("p2"))) score += 2;
        if(r3.equals(request.getParameter("p3"))) score += 2;
        if(r4.equals(request.getParameter("p4"))) score += 2;
        if(r5.equals(request.getParameter("p5"))) score += 2;
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Evaluación - Cyberpunk Edgerunners</title>
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/eval.css">
</head>

<body>

<header>
    <nav>
        <a href="index.jsp">Inicio</a>
        <a href="sinopsis.jsp">Sinopsis</a>
        <a href="personajes.jsp">Personajes</a>
        <a href="evaluacion.jsp" class="active">Evaluación</a>
    </nav>
</header>

<main class="eval-container">

    <h2>Evaluación del sitio</h2>
    <p>Responde las 5 preguntas basadas en la información del sitio.</p>

    <% if(score == -1){ %>

        <!-- FORMULARIO -->
        <form method="post" class="eval-form">

            <!-- PREGUNTA 1 -->
            <div class="pregunta">
                <h3>1. ¿Qué estudio animó Cyberpunk: Edgerunners?</h3>
                <label><input type="radio" name="p1" value="a"> Ufotable</label>
                <label><input type="radio" name="p1" value="b"> Studio Trigger</label>
                <label><input type="radio" name="p1" value="c"> MAPPA</label>
            </div>

            <!-- PREGUNTA 2 -->
            <div class="pregunta">
                <h3>2. ¿Quién es el protagonista de la serie?</h3>
                <label><input type="radio" name="p2" value="a"> Maine</label>
                <label><input type="radio" name="p2" value="b"> Lucy</label>
                <label><input type="radio" name="p2" value="c"> David Martínez</label>
            </div>

            <!-- PREGUNTA 3 -->
            <div class="pregunta">
                <h3>3. ¿Qué es un netrunner?</h3>
                <label><input type="radio" name="p3" value="a"> Un combatiente cuerpo a cuerpo</label>
                <label><input type="radio" name="p3" value="b"> Un hacker experto del ciberespacio</label>
                <label><input type="radio" name="p3" value="c"> Un piloto de mechas</label>
            </div>

            <!-- PREGUNTA 4 -->
            <div class="pregunta">
                <h3>4. ¿Quién introduce a David en el mundo de los edgerunners?</h3>
                <label><input type="radio" name="p4" value="a"> Lucy</label>
                <label><input type="radio" name="p4" value="b"> Pilar</label>
                <label><input type="radio" name="p4" value="c"> Kiwi</label>
            </div>

            <!-- PREGUNTA 5 -->
            <div class="pregunta">
                <h3>5. ¿Quién es el mentor de David?</h3>
                <label><input type="radio" name="p5" value="a"> Faraday</label>
                <label><input type="radio" name="p5" value="b"> Rebbeca</label>
                <label><input type="radio" name="p5" value="c"> Maine</label>
            </div>

            <input type="hidden" name="submitted" value="yes">

            <button type="submit" class="btn-eval">Enviar evaluación</button>
        </form>

    <% } else { %>

        <!-- RESULTADOS -->
        <div class="resultado">
            <h3>Resultado final</h3>
            <p>Tu puntaje es:</p>
            <div class="puntaje"><%= score %> / 10</div>

            <% if(score >= 8){ %>
                <p class="mensaje">¡Excelente! Estás listo para Night City</p>
            <% } else if(score >= 5){ %>
                <p class="mensaje">Nada mal, tienes potencial de edgerunner</p>
            <% } else { %>
                <p class="mensaje">Necesitas repasar antes de entrar</p>
            <% } %>

            <a href="evaluacion.jsp" class="btn-eval retry">Intentar otra vez</a>
        </div>

    <% } %>

</main>

<footer>
    <p>© 2025 Blog Cyberpunk: Edgerunners</p>
</footer>

</body>
</html>
