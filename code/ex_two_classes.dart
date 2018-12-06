class Developer {
  // When we do not initialise a value, it is always set to `null`
  num energyLevel, distractions;

  Developer(num e, num d) {
    this.energyLevel = e;
    this.distractions = d;
  }

  String addDistraction(int d) {
    this.distractions += d;
    this.energyLevel -= d;
    bool depleted = this.checkEnergy();
    if (depleted) {
      return "Don't make me work in a coffee shop";
    } else {
      return "Things are going surprisingly well, please bother me";
    }
  }

  bool checkEnergy() {
    if (this.energyLevel < 5) {
      return true;
    } else {
      return false;
    }
  }


}

void main(List<String> args) {
  var d =  new Developer(100, 0);
  print(d.addDistraction(80));
  print(d.addDistraction(40));
}