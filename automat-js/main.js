let dishes = [
  'chicken pot pie',
  'baked beans',
  'macaroni and cheese',
  'Burgundy sauce with beef and noodles',
  'creamed spinach',
  'pumpkin pie',
  'strawberry short cake'
];

let dishDiv = document.getElementById('main');

dishes.forEach((dish) => {
  let foodItemDiv = document.createElement('div');
  foodItemDiv.className = 'food-item';
  foodItemDiv.innerHTML = dish;
  dishDiv.appendChild(foodItemDiv);
  let hideItem = (event) => {
    foodItemDiv.className = 'hidden';
  };
  foodItemDiv.addEventListener('click', hideItem, false);
});
