// Função assíncrona para gerar o hash
async function generateHash(password) {
    // Codifica a senha em uma array de bytes (Uint8Array)
    const encoder = new TextEncoder();
    const data = encoder.encode(password);

    // Usa a Web Crypto API para gerar o hash usando o algoritmo SHA-256
    const hashBuffer = await crypto.subtle.digest('SHA-256', data);

    // Converte a array de bytes do hash para uma representação hexadecimal
    const hashArray = Array.from(new Uint8Array(hashBuffer));
    const hashHex = hashArray.map(b => b.toString(16).padStart(2, '0')).join('');

    return hashHex;
}

// Obtém os elementos do HTML
const passwordInput = document.getElementById('passwordInput');
const hashButton = document.getElementById('hashButton');
const hashOutput = document.getElementById('hashOutput');

// Adiciona um listener para o clique do botão
hashButton.addEventListener('click', async () => {
    const password = passwordInput.value;

    if (password) {
        // Chama a função para gerar o hash
        const hashedPassword = await generateHash(password);
        // Exibe o hash na tela
        hashOutput.textContent = hashedPassword;
    } else {
        hashOutput.textContent = 'Por favor, digite uma senha.';
    }
});