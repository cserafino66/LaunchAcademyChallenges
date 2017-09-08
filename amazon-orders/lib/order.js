class Order {
  constructor(placedOn, customer, paymentMethod, shippingAddress, items) {
    this.placedOn = placedOn;
    this.customer = customer;
    this.paymentMethod = paymentMethod;
    this.shippingAddress = shippingAddress;
    this.items = [];
  }

  addItem(item) {
    this.items.push(item);
  }

  total() {
    let total = 0;
    this.items.forEach((item) => {
      total += item.price;
    });
    return total;
  }

  summary() {
    let names = '';
    this.items.forEach((item) => {
      names += `Name: ${item.name}`;
    });
    return `Customer: ${this.customer}\nItems:\n${names}\nTotal: ${this.total()} `;
  }
}
