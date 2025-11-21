<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Cyberpunk: Edgerunners - Inicio</title>
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/audioStyles.css">
    
</head>
<body>

    <header>
        <nav>
            <a href="index.jsp" class="active">Inicio</a>
            <a href="sinopsis.jsp">Sinopsis</a>
            <a href="personajes.jsp">Personajes</a>
            <a href="evaluacion.jsp">Evaluación</a>
        </nav>
    </header>

    <!-- Hero con fondo crew.jpg -->
    <section class="hero" style="background: url('imgs/crew.jpg') center/cover no-repeat;">
        <div class="overlay">
            <h1>Cyberpunk: Edgerunners</h1>
            <p>Un viaje por la oscuridad y el neón de Night City.</p>
            <a href="sinopsis.jsp" class="btn">Conocer más</a>
        </div>
    </section>

    <main class="content">
        <h2>Bienvenido al blog</h2>
        <p>
            Este blog está dedicado a la miniserie <strong>Cyberpunk: Edgerunners</strong>, 
            una historia sobre sueños, lealtad y la lucha por sobrevivir en un mundo gobernado por el dinero y la tecnología.
        </p>

        <!-- Galería con nombres -->
      <!-- Galería con nombres -->
<div class="gallery">
    <div class="character" data-name="David">
        <img src="imgs/david.jpg" alt="David Martínez">
        <p class="name">David Martínez</p>
    </div>

    <div class="character" data-name="Lucy">
        <img src="imgs/lucy2.jpg" alt="Lucy">
        <p class="name">Lucy</p>
    </div>

    <div class="character" data-name="Maine">
        <img src="imgs/maine.jpg" alt="Maine">
        <p class="name">Maine</p>
    </div>
</div>

   
<button id="toggleMusic" class="audio-btn"> Pausar</button>

<audio id="player"></audio>
        <div class="video-container">
            <h3>Preview</h3>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/KvMY1uzSC1E"
                    title="Cyberpunk: Edgerunners" frameborder="0"
                    allowfullscreen></iframe>
        </div>
    </main>

    <footer>
        <p>© 2025 Blog Cyberpunk: Edgerunners — Inspirado en el universo de 
            <a href="https://es.wikipedia.org/wiki/Cyberpunk:_Edgerunners" target="_blank">Cyberpunk Wiki</a>
        </p>
    </footer>
    <script>
    const player = document.getElementById("player");
    const characters = document.querySelectorAll(".gallery .character");
    const toggleBtn = document.getElementById("toggleMusic");

    // Canción asignada a cada personaje
    const characterSongs = {
        "David": "audio/This Fire.mp3",
        "Lucy": "audio/Let You Down.mp3",
        "Maine": "audio/Little Stranger.mp3"
    };

    // Personaje aleatorio al cargar
    window.onload = () => {
        const randomIndex = Math.floor(Math.random() * characters.length);
        const chosen = characters[randomIndex];
        highlightCharacter(chosen);
        playCharacterSong(chosen.dataset.name);
    };

    // Evento clic en cada personaje
    characters.forEach(character => {
        character.addEventListener("click", () => {
            highlightCharacter(character);
            playCharacterSong(character.dataset.name);
        });
    });

    // Resaltar personaje
    function highlightCharacter(selected) {
        characters.forEach(c => c.classList.remove("active"));
        selected.classList.add("active");
    }

    // Reproducir canción
    function playCharacterSong(name) {
        const song = characterSongs[name];
        if (!song) return;
        player.src = song;
        player.play();
        toggleBtn.textContent = "⏸ Pausar canción";
    }

    // Pausar / reanudar
    toggleBtn.addEventListener("click", () => {
        if (player.paused) {
            player.play();
            toggleBtn.textContent = "⏸ Pausar canción";
        } else {
            player.pause();
            toggleBtn.textContent = "▶ Reanudar canción";
        }
    });
</script>
    

</body>


</html>


