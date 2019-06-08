let idIncrementer = 0
const ticketTitle = document.querySelectorAll('.ticket-title');

addRevealClass = (event) => {
  event.currentTarget.parentElement.children[1].classList.toggle('relative-opacity');
}

ticketTitle.forEach((element) => {
  element.addEventListener('click', addRevealClass);
  idIncrementer += 1;
});
