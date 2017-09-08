let fruit = {
  itemName: 'apples',
  quantity: 6
};

let vegetables = {
  itemName: 'tomatoes',
  quantity: 4
};

let fish = {
  itemName: 'tuna filets',
  quantity: 4
};

let dairy = {
  itemName: "Swiss cheese",
  quantity: 2
};

let shoppingCart = [fruit,vegetables, fish, dairy];

shoppingCart.forEach((item) => {
  console.log(item.itemName + ": " + item.quantity);
});
