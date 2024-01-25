

const contentElement = document.getElementById('content');

const navLinks = document.querySelectorAll('.nav-link');

navLinks.forEach(link => {
  link.addEventListener('click', (event) => 
  {
    event.preventDefault();
    const url = link.getAttribute('href');

    fetch(url)
      .then(response => response.text())
      .then(content => {
        contentElement.innerHTML = content;
      })
      .catch(error => {
        console.error('Error fetching content:', error);
      });
  });
});
