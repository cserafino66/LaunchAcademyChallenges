let lengthQuestion = 'Please enter the length of your driveway in feet: ';
let length = prompt(lengthQuestion);
let widthQuestion = 'Please enter the width of your driveway in feet: ';
let width = prompt(widthQuestion);
let snowfallQuestion = 'Please enter the amount of snowfall in inches: ';
let snowfall = (prompt(snowfallQuestion)/12);
let cubicFeetOfSnow = (length * width * snowfall).round;
let total = 0;



if (cubicFeetOfSnow < 50) {
  total = '$20';
}
else if (50 <= cubicFeetOfSnow < 150) {
  total = '$50';
}
else if (150 <= cubicFeetOfSnow < 300) {
  total = '$100';
}
else total = '$200';

let divMain = document.getElementById("main");
divMain.innerHTML = total;
