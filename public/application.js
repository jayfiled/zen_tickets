
// Delay adding of click event handlers until elements have faded in

const delayedFunc = () => {

  // Target the elements that need a click event
  const getStartedBtn = document.getElementById('get-started')
  const ticketWrappers = document.querySelectorAll('.ticket-wrapper');
  const moreBtns = document.querySelectorAll('.more-button')

  // Callbacks to toggle classes
  const showFirstTickets = (event) => {
    event.currentTarget.parentElement.parentElement.nextElementSibling.classList.toggle('in-left');
  }
  const addRevealClass = (event) => {
    event.currentTarget.children[0].children[1].classList.toggle('relative-opacity');
  }
  const seeMoreTickets = (event) => {
    console.log('clicked')
    event.currentTarget.parentElement.nextElementSibling.classList.toggle('in-left');
  }


  // Event listeners
  getStartedBtn.addEventListener('click', showFirstTickets);
  ticketWrappers.forEach(el => el.addEventListener('click', addRevealClass));
  moreBtns.forEach(el => el.addEventListener('click', seeMoreTickets));


}

setTimeout(delayedFunc, 1100);

