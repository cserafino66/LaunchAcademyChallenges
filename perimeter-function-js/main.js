let widthPrompt = 'What is the width?';
let width = prompt(widthPrompt);
let lengthPrompt = 'What is the length?';
let length = prompt(lengthPrompt);

let perimeter = (width, length) => {
  return (2 * width + 2 * length);
};

let divMain = document.getElementById('main');
divMain.innerHTML = perimeter(width, length);
