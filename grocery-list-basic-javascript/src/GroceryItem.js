class GroceryItem {
  constructor (name, quantity) {
    this.name = name;
    if (!quantity) {
      this.quantity = 1;
    } else {
      this.quantity = quantity;
    }
  }

  toListElement() {
    return `<li>${this.quantity} ${this.name}</li>`;
  }
}
