class Item {
  constructor(name, manufacturer, price, description) {
    this.name = name;
    this.manufacturer = manufacturer;
    this.price = price;
    this.description = description;
  }

  summary() {
    if (this.description === undefined) {
      return `Name: ${this.name}\nManufacturer: ${this.manufacturer}\nPrice: $${this.price.toFixed(2)}`;
    }
    else {
      return `Name: ${this.name}\nDescription: ${this.description}\nManufacturer: ${this.manufacturer}\nPrice: $${this.price}`;
      }
    }
}
