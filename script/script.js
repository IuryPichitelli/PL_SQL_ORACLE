
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
