let lastScrollY = 0;
let ticking = false;

function updateParallax() {
  document.querySelectorAll(".mdx-parallax__layer").forEach(layer => {
    const depth = parseFloat(getComputedStyle(layer).getPropertyValue("--md-parallax-depth")) || 1;
    const movement = lastScrollY * (depth * 0.05);
    layer.style.transform = `translateY(${movement}px)`;
  });

  ticking = false;
}

document.addEventListener("scroll", () => {
  lastScrollY = window.scrollY;

  if (!ticking) {
    requestAnimationFrame(updateParallax);
    ticking = true;
  }
});
