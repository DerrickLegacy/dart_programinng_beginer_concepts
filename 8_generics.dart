/*
GENERICS
-Ensure type safety esp at compile time
-Reduce on code duplication
-Better code generation, organization and understandability

Example:  Avoiding Duplication in interfaces
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}
You discover that you want a string-specific version of this interface, so you create another interface:

abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

Later, you decide you want a number-specific version of this interface... You get the idea.

Generic types can save you the trouble of creating all these interfaces. Instead, you can create a single interface that takes a type parameter:

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
*/

import 'dart:ffi';

void main(List<String> args) {
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  // names.add(42); // Error

  // Using collection literals
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  // Using parameterized types with constructors
  // put the types in angle brackets (<...>) just after the class name.
  var nameSet = Set<String>.from(names);
  print(nameSet);

  var views = Map<int, View>();
  var results = Map<int, Bool>();

  // Generic collections and the types they contain
  var names_ = <String>[];
  names_.addAll(['Seth', 'Kathy', 'Lars']);
  print(names_ is List<String>); // true

// Using generic methods
  T firstMethod<T>(List<T> list) {
    T temp = list[0];
    return temp;
  }

  var firstView = firstMethod([1, 2, 3, 4, 5, 6, 7]);
  var secondView = firstMethod(["James", "Lars"]);

  print(firstView);
  print(secondView);
}

class View {}

// Restricting the parameterized type
/**
 * When implementing a generic type, you might want to limit the types that can be 
  provided as arguments, so that the argument must be a subtype of a particular type.
  You can do this using extends.
 * A common use case is ensuring that a type is non-nullable by making it a subtype of Object (instead of the default, Object?).
 * 
 */

class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}

class Footer<T extends String> {
  // Any type provided to Foo for T must be non-nullable.
}
