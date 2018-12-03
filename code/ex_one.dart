// TODO 1 change this function to return a value multiplied by a second value
int multiplyByTwo(int value) {
  return value * 2;
}

// Functions with a single statement can  be written in a single line
double halveThis(value) => value / 2;

/**
 * TODO 2 create a function like the one above that takes a string and returns
 * its length
  */

void main() {
// TODO 3 change the value of `name` to your own name
// TODO 4 move the hello calls into a function and pass a name to it
// TODO 5 add a for loop to the hello function and print it X times
  var name = 'BILLY!';
  print('Hello World');
  print('Hello ${name}');
  var x = multiplyByTwo(4);
  print(x);
  print(halveThis(8));
}
