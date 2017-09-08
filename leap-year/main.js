class Year {
  constructor (year) {
    this.year = year;
  }

  isLeapYear() {
    if (this.year % 4 === 0) {
      return true;
    } else if (this.year % 100 !== 0) {
      return false;
    } else if (this.year % 400 === 0) {
      return true;
    } else {
      return false;
    }
  }
}

let listOfLeapYears = [];
for (i = 2000; i < 2100; i++) {
  let testYear = new Year(i);
  if (testYear.isLeapYear()) {
    listOfLeapYears.push('<li>' + testYear.year + '</li>');
  }
}


listDiv = document.getElementById("listDiv");
listDiv.innerHTML = listOfLeapYears;
