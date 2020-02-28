import Choices from 'choices.js';

const elements = document.querySelectorAll('.choices');

elements.forEach((elem) => {
  console.log("je sui sla")
  new Choices(elem);
})
