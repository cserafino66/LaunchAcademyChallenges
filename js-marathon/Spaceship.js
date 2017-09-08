var rocket = require('./Rocket.js')
class Spaceship {
  constructor(name, crew, propulsion) {
    this.name = name;
    this.crew = [];
    this.propulsion = null;
  }

  loadCrew(array) {
    array.forEach((member) => {
      this.crew.push(member);
      console.log(`${member.name} has boarded the ship!`);
    });
  }

  captain() {
    let number = this.crew.length;
    let randomNumber = Math.floor(Math.random() * number);
    return this.crew[randomNumber].name;
  }

  mountPropulsion(object) {
    this.propulsion = object;
    console.log(`The rocket has been mounted!`);
  }

  takeoff() {
    if (rocket.fire() === true) {
      console.log(`ROOOOOOOOOOOOOAAAAAAAARRRRRRRRRR! Takeoff!`);
    }
    else {
      console.log(`This tub is going nowhere!`);
    }
  }
}

module.exports = Spaceship;
