/*
  Records are an anonymous, immutable, aggregate type.
  Like other collection types, they let you bundle multiple objects into a single object. Unlike other collection types, records are fixed-sized, heterogeneous, and typed.
  Records are real values; you can store them in variables, nest them, pass them to and from functions, and store them in data structures such as lists, maps, and sets.
  */
void main(List<String> args) {
  var record = ("first", a: "last", b: "first", c: "last");

  final location = (10.0, 20.0);
  final location2 = (lat: 10.0, lon: 20.0);
  (double, double) location3 = (10.0, 20.0);
  (double lat, double lon) location4 = (10.0, 20.0);

  // Accessing record fields
  // record.$position
  final lat = location.$1;
  final long = location.$2;
  print('($lat, $long)');

// If the fields have names, you can access the fields via their names directly like this:
  var location6 = (lat: 10.0, lon: 20.0);
  final lat6 = location6.lat;
  final lon = location6.lon;
  print('($lat6, $lon)');

  var recordTwo = ('first', a: 2, b: true, 'last');

  print(recordTwo.$1); // Prints 'first'
  print(recordTwo.a); // Prints 2
  print(recordTwo.b); // Prints true
  print(recordTwo.$2); // Prints 'last'

  (num, Object) pair = (42, 'a');
  var first = pair.$1; // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`.
  print('Record types: $first, $second');

  // Record equality
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); // Prints 'true'.

  ({int x, int y, int z}) point_two = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color_two = (r: 1, g: 2, b: 3);

  print(point_two ==
      color_two); // Prints 'false'. Lint: Equals on unrelated types.

  // Returning multiple values from a function
  final result = minmax([5, 2, 3, 7, 0, -1]);
  print(result);
}

(double?, double?) minmax(List<double> numbers) {
  if (numbers.length == 0) {
    return (null, null);
  }

  double min = numbers[0];
  double max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }

    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  return (min, max);
}
