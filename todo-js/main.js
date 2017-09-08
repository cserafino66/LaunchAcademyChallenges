let array = ['Write some JavaScript', 'Freak out for 3 hours', 'Submit System Check', 'Have a beer'];
let list = "";

array.forEach((item) => {
  list += ('<li>' + item + '</li>');
});

let listDiv = document.getElementById('todo-list');

listDiv.innerHTML = list;
