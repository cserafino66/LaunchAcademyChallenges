let freezeQuestion = 'At what temperature on the Celsius scale does water freeze?';
let user_input = prompt(freezeQuestion);
let answer = 0;
let divResult = document.getElementById('result');

if (user_input == answer) {
  divResult.innerHTML = 'Correct!';
}
else {
  divResult.innerHTML = 'Sorry, that\'s incorrect!';
}
