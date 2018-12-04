class Developer {
  // When we do not initialise a value, it is always set to `null`
  num energyLevel, distractions;

  Developer(num e, num d) {
    this.energyLevel = e;
    // TODO 1 set the distractions
  }

  String addDistraction(int d) {
    this.distractions += d;
    // TODO 2 set the  energy level to be the opposite of the distractions
    bool depleted = this.checkEnergy();
    // TODO 4 Return a string if they have energy or none left
  }

  void checkEnergy() {
    // TODO 3 check if energy is above 0 (or threshold) and return true or false
  }


}

void main(List<String> args) {
  var d =  new Developer(100, 0);
  d.addDistraction(80);
  // TODO 5 print the returned string
}