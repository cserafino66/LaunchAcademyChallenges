var Spaceship = require('./Spaceship.js');
var CrewMember = require('./CrewMember.js');
var Rocket = require('./Rocket.js');

let crewNames = ['David', 'Rob', 'Nick'];
let trainedCrew = [];

var trainCrew = function(nameArray) {
  nameArray.forEach((name) => {
    trainedCrew.push(new CrewMember(name, true));
  });
};

trainCrew(crewNames);


let ourShip = new Spaceship('Orion', trainedCrew);

var launchpad = function(shipName, crew, booster) {
  console.log('The ' + shipName.name + ' will launch soon!');
  ourShip.loadCrew(crew);
  console.log(`The captain for this voyage will be ` + ourShip.captain() + '!');
  ourShip.mountPropulsion(booster);
  Rocket.addFuel(100);
  ourShip.takeoff();
};



launchpad(ourShip, trainedCrew, Rocket);
