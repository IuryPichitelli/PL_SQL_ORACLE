
document.addEventListener("DOMContentLoaded", () => {
  const btns = document.querySelectorAll('.buttonOpenContainer');

  btns.forEach(btn => {
    btn.addEventListener("click", () => {
      const container = btn.nextElementSibling;
      const button = btn;
      container.classList.toggle("open");
      button.classList.toggle("activeImage");
    });
  });
});

/**********************************************************************/

function showPage(pageId) {
            // 1. Esconder todas as páginas de conteúdo
            const pageContents = document.querySelectorAll('.page-content');
            pageContents.forEach(page => {
                page.classList.add('hidden');
            });

            // 2. Remover a classe 'active' de todos os links de navegação
            const navLinks = document.querySelectorAll('nav ul li a');
            navLinks.forEach(link => {
                link.classList.remove('active');
            });

            // 3. Mostrar a página específica
            const targetPage = document.getElementById(pageId);
            if (targetPage) {
                targetPage.classList.remove('hidden');
            }

            // 4. Adicionar a classe 'active' ao link de navegação correspondente
            const activeLink = document.querySelector(`nav ul li a[href="#${pageId}"]`);
            if (activeLink) {
                activeLink.classList.add('active');
            }
        }

        // Opcional: Mostrar a página inicial ao carregar a página
        document.addEventListener('DOMContentLoaded', () => {
            showPage('home'); // Exibe a página 'home' por padrão
        });

        // Opcional: Gerenciar navegação por URL hash (ex: seu_site.html#about)
        // Isso permite que o usuário navegue usando o histórico do navegador (setas para frente/trás)
        window.addEventListener('hashchange', () => {
            const hash = window.location.hash.substring(1); // Remove o '#'
            if (hash) {
                showPage(hash);
            } else {
                showPage('home'); // Volta para a home se o hash for removido
            }
        });

        // Para o exemplo inicial, garantimos que a home seja mostrada
        // e o hash seja definido corretamente se não houver um na URL inicial
        if (!window.location.hash) {
            window.location.hash = '#home';
        }
