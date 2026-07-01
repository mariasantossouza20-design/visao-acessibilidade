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
