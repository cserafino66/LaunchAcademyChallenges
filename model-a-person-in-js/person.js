let colinSerafino = {
  firstName: 'Colin',
  lastName: 'Serafino',
  hometown: 'Watertown',
  occupation: 'Launch Academy Student',
  catchPhrase: '"Right on, right on..."',
  name() {
    console.log(this.firstName + " " + this.lastName);
  }
};

console.log(colinSerafino);
