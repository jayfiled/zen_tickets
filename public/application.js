// console.log("JS working")

const delayedFunc = () => {
  console.log("Running")
  const ticketWrapper = document.querySelectorAll('.ticket-wrapper');

  const addRevealClass = (event) => {
    event.currentTarget.children[0].children[1].classList.toggle('relative-opacity');
  }

  ticketWrapper.forEach((element) => {
    console.log('added')
    element.addEventListener('click', addRevealClass);
  });
}

setTimeout(delayedFunc, 1100);

