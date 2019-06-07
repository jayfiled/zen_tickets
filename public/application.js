const ticketBody = document.querySelector('.ticket-body');

addRevealClass = (event) => {
  ticketBody.classList.toggle('relative-opacity');
}

ticketBody.addEventListener('click', addRevealClass);
