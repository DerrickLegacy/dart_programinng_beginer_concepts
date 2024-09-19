import 'dart:ffi';

/**
 * Typedefs-type definition
 * A type alias—often called a typedef because it's declared with the keyword typedef—is 
 * a concise way to refer to a type. 
 * Here's an example of declaring and using a type alias named IntList:
 * 
 * Helpful when you need to pass functions as arguments or
 * return them from other functions, particularly in situations involving callbacks or higher-order functions.
 */

typedef IntList = List<int>; // Typedef declared at the top level
typedef Greeting = void Function(String name);

typedef Compare<T> = int Function(T a, T b);
int compareInts(int a, int b) => a - b;
int compareStrings(String a, String b) => a.compareTo(b);

void main(List<String> args) {
  IntList il = [1, 2, 3]; // Now you can use the typedef inside the function
  print(il); // Output: [1, 2, 3]

  Greeting greet = (String name) {
    print('Hello, $name!');
  };
  greet('Derrick'); // Output: Hello, Derrick!

  Calculator calc = Calculator();
  Operation operation = calc.multiply;
  print(operation(4, 5)); // Output: 20

  Compare<int> intComparator = compareInts;
  Compare<String> stringComparator = compareStrings;

  print(intComparator(5, 3)); // Output: 2
  print(stringComparator('apple', 'banana')); // Output: -1
}

//Typedefs with Classes
// You can use typedefs to refer to class methods as well. This is especially useful when you pass class methods as callbacks.
class Calculator {
  int multiply(int a, int b) => a * b;
}

typedef Operation = int Function(int a, int b);
