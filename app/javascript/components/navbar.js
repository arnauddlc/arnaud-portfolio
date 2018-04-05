// javascript to toggle transparency of navbar when scrolling down

function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-arnaud');
  console.log("hello World");
  console.log(navbar);
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('navbar-arnaud-plain');
    } else {
      navbar.classList.remove('navbar-arnaud-plain');
    }
  });
}


export { initUpdateNavbarOnScroll };