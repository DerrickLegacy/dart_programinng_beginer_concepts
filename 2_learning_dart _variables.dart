import 'dart:convert';

late String description;
void main(List<String> args) {
  print('Hello World!');

  int demoIntegerValue = 35;
  double demoDoubleValue = 2.99;
  bool demoBoolValue = true;
  String demoStringValue = 'I am a string';

  print(demoIntegerValue);

  const daysInYear = 365;
  print('There are $daysInYear days in a year');

  final today = DateTime.now();
  print(
      'Today is day ${today.weekday}'); //Final represents a value that needs to be determined at runtime and is not subject

// 2.5 Using a Print statement
  int intVariable = 10;
  var boolVariable = true;
  print(intVariable);
  print('$intVariable');
  print('The bool variable is $boolVariable');

  // Create JSON value
  Map<String, dynamic> data = {
    jsonEncode('title'): json.encode('Star Wars'),
    jsonEncode('year'): json.encode(1979)
  };

  // Decode the JSON
  Map<String, dynamic> items = json.decode(data.toString());
  print(items);
  print(items['title']);
  print("This is the title: $items['title']");
  print('This is the title: ${items['title']}');

  //2.8 Working with Null

  /*
  Typically a null value is used to initialize variables that do not have a default value to be assigned. In
  this instance null can be used to represent a variable that has not explicitly been
  assigned a value.
  
  -null type safety is now the default, meaning it is no longer possible to assign null to all data types.
  */

  int? ten = null;
  print('ten: $ten');
  ten = 10;
  print('ten: $ten');

  String name;
  name = "John";
  print(name);

  /*
  Late variables
      The late modifier has two use cases:

      Declaring a non-nullable variable that's initialized after its declaration.
      Lazily initializing a variable.
  */
  description = 'Feijoada!';
  print(description);
}
