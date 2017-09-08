let groceryList = [];

let fruit = new GroceryItem('apples');
let vegetables = new GroceryItem('peppers', 6);
let meat = new GroceryItem('chicken wings', 20);

groceryList.push(fruit, vegetables, meat);

console.log(fruit);
console.log(groceryList);

let itemHTML = '<ul>';
groceryList.forEach((item) => {
  itemHTML += item.toListElement();
});
itemHTML += ('</ul>');

console.log(itemHTML);

let listID = document.getElementById("main");
listID.innerHTML = itemHTML;
