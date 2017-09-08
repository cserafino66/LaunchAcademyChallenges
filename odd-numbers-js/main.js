let i = 0;
let count = 100;

while  (i < 100) {
  i++;
  if (i % 2 == 1) {
    console.log(i);
    let divMain = document.getElementById('main');
    divMain.innerHTML += i + '\n';
  }
}
