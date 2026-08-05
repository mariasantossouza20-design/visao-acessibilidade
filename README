# visao-acessibilidade
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visão e Acessibilidade Digital</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <header role="banner">
        <h1>Acessibilidade Visual</h1>
        <div class="controls" aria-label="Controles de Acessibilidade">
            <button id="toggle-contrast" aria-label="Alternar Alto Contraste">Alto Contraste</button>
            <button id="decrease-font" aria-label="Diminuir tamanho do texto">A-</button>
            <button id="increase-font" aria-label="Aumentar tamanho do texto">A+</button>
        </div>
    </header>

    <main role="main">
        <section aria-labelledby="intro-title">
            <h2 id="intro-title">A Importância da Visão na Web</h2>
            <p>A acessibilidade web garante que pessoas com deficiência visual possam navegar na internet de forma autônoma e digna.</p>
        </section>

        <section aria-labelledby="tips-title">
            <h2 id="tips-title">Práticas Essenciais</h2>
            <ul>
                <li>Texto alternativo (alt) em todas as imagens de conteúdo.</li>
                <li>Contraste adequado entre a cor do texto e o fundo.</li>
                <li>Navegação total por meio do teclado.</li>
                <li>Uso de tags HTML semânticas para leitores de tela.</li>
            </ul>
        </section>
    </main>

    <footer role="contentinfo">
        <p>&copy; 2026 - Desenvolvido com foco em acessibilidade universal.</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
/* Configurações Globais */
:root {
    --bg-color: #ffffff;
    --text-color: #222222;
    --header-bg: #0056b3;
    --header-text: #ffffff;
    --btn-bg: #f8f9fa;
    --btn-text: #212529;
}

/* Modo Alto Contraste */
body.high-contrast {
    --bg-color: #000000;
    --text-color: #ffff00;
    --header-bg: #000000;
    --header-text: #ffff00;
    --btn-bg: #ffff00;
    --btn-text: #000000;
}

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: var(--bg-color);
    color: var(--text-color);
    margin: 0;
    padding: 0;
    transition: background 0.3s, color 0.3s;
}

header {
    background-color: var(--header-bg);
    color: var(--header-text);
    padding: 1rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

.controls button {
    background-color: var(--btn-bg);
    color: var(--btn-text);
    border: 2px solid var(--text-color);
    padding: 0.5rem 1rem;
    margin-left: 0.5rem;
    cursor: pointer;
    font-weight: bold;
    border-radius: 4px;
}

main {
    max-width: 800px;
    margin: 2rem auto;
    padding: 0 1rem;
}

ul {
    padding-left: 1.5rem;
}

footer {
    text-align: center;
    padding: 1rem;
    margin-top: 2rem;
    border-top: 1px solid var(--text-color);
}
script.js
// Controle de Alto Contraste
const toggleContrastBtn = document.getElementById('toggle-contrast');
toggleContrastBtn.addEventListener('click', () => {
    document.body.classList.toggle('high-contrast');
});

// Controle de Tamanho de Fonte
let currentFontSize = 100; // Representa 100%
const increaseFontBtn = document.getElementById('increase-font');
const decreaseFontBtn = document.getElementById('decrease-font');

increaseFontBtn.addEventListener('click', () => {
    if (currentFontSize < 150) { // Limite máximo de 150%
        currentFontSize += 10;
        document.body.style.fontSize = `${currentFontSize}%`;
    }
});

decreaseFontBtn.addEventListener('click', () => {
    if (currentFontSize > 80) { // Limite mínimo de 80%
        currentFontSize -= 10;
        document.body.style.fontSize = `${currentFontSize}%`;
    }
});
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visão & Acessibilidade</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #111;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
        }

        header {
            background: #0056b3;
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
        }

        main {
            margin-top: 20px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            background: #0056b3;
            color: white;
            border-radius: 5px;
        }

        button:hover {
            background: #003d80;
        }

        .alto-contraste {
            background: black;
            color: yellow;
        }

        footer {
            margin-top: 30px;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>

<header>
    <h1>Visão & Acessibilidade</h1>
    <p>Exemplo de página acessível para pessoas com deficiência visual.</p>
</header>

<main>
    <h2>Recursos de Acessibilidade</h2>

    <ul>
        <li>✔ Alto contraste</li>
        <li>✔ Texto legível</li>
        <li>✔ Navegação por teclado</li>
        <li>✔ Estrutura semântica em HTML</li>
    </ul>

    <button onclick="alternarContraste()">
        Alternar Alto Contraste
    </button>

    <p>
        A acessibilidade digital permite que todas as pessoas utilizem
        sites e sistemas com autonomia, independentemente de suas limitações.
    </p>
</main>

<footer>
    Desenvolvido para demonstração de acessibilidade.
</footer>

<script>
function alternarContraste() {
    document.body.classList.toggle("alto-contraste");
}
</script>

</body>
</html>
# Visão & Acessibilidade

Projeto simples em HTML, CSS e JavaScript para demonstrar recursos básicos de acessibilidade.

## Funcionalidades

- Alto contraste
- HTML semântico
- Layout responsivo
- Fácil navegação

## Tecnologias

- HTML5
- CSS3
- JavaScript
- git init
git add .
git commit -m "Projeto Visão e Acessibilidade"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/visao-acessibilidade.git
git push -u origin main
