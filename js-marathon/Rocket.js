var rocket = {
  fuel: 0,

  addFuel: function(integer) {
    fuel = integer;
    console.log(`The rocket now has ` + fuel + ' fuel.');
  },

  fire: function() {
    if (fuel > 0) {
      fuel--;
      console.log(`The rocket has been fired! The rocket currently has ` + fuel + ` fuel.`);
      return true;
    }
    else {
      console.log(`The rocket failed to fire!`);
      return false;
    }
  }
};

module.exports = rocket;
