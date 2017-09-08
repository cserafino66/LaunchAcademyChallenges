let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png',
  'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png',
  "It\'s a tiny Launch sticker. How cute!"],
  ['LA-T-SHRIT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png',
  '100% Cotton. Makes a great gift.']
];

class Product {
  constructor (id, quantity, name, imageURL, description) {
    this.id = id;
    this.quantity = quantity;
    this.name = name;
    this.imageURL = imageURL;
    this.description = description;
  }

  sell() {
    if (this.quantity > 0){
    this.quantity--;
    }
  }

  toHTML() {
  return(
      `<div class="product">
        <h1>${this.name}</h1>
        <h5>${this.quantity} In Stock</h5>
        <img src="${this.imageURL}"/>
        <h3>Description</h3>
        <p>${this.description}</p>
      </div>
    `);
  }
}

let inventoryObjects = inventory.map((product) => {
  return new Product(...product);
});


allProductsElement = document.getElementById("all-products");

//Testing `sell()` function`
inventoryObjects[0].sell();
inventoryObjects[1].sell();
inventoryObjects[2].sell();


//Display object data on index.html
inventoryObjects.forEach((object) => {
  allProductsElement.innerHTML += object.toHTML();
});
