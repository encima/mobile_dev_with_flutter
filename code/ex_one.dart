int multiplyByMultiplier(int value, int multiplier) {
  return value * multiplier;
}

// Functions with a single statement can  be written in a single line
double halveThis(value) => value / 2;


int getStringLength(st) => st.length;

void sayHi(var to) {
  for(int i = 0; i < 5; i++) {
    print('Hello ${to}');
  }
}

void main() {
  var name = 'encima';
  print('Hello World');
  sayHi(name);
  print(getStringLength(name));
  var x = multiplyByMultiplier(4, 8);
  print(x);
  print(halveThis(8));
}
