void main(List<String> args) {
  /*
  Arithmetic operators
  Dart supports the usual arithmetic operators, as shown in the following table.

Operator	Meaning
+	  Add
-	  Subtract
-   expr	Unary minus, also known as negation (reverse the sign of the expression)
*	  Multiply
/	  Divide
~/  Divide, returning an integer result
%	  Get the remainder of an integer division (modulo)

*/

  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

/*
Logical operators
You can invert or combine boolean expressions using the logical operators.

Operator	Meaning
!expr	    inverts the following expression (changes false to true, and vice versa)
||	      logical OR
&&	      logical AND
  */
  final value = 0x22;
  final bitmask = 0x0f;

  ((value & bitmask) == 0x02) ? print("True") : print("False"); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR

  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right

  /*
  
  Type test operators
    The as, is, and is! operators are handy for checking types at runtime.

    Operator	Meaning
    as	Typecast (also used to specify library prefixes)
    is	True if the object has the specified type
    is!	True if the object doesn't have the specified type
      
  Use the as operator to cast an object to a particular type if and only if you are sure that the object is of that type.
 (employee as Person).firstName = 'Bob';

  */

  int a = 6;
  int b = 7;
  if (a is String) {
    print("True");
  } else {
    print("Not a String");
  }

  /*
  Conditional expressions
    Dart has two operators that let you concisely evaluate expressions that might otherwise require if-else statements:

    condition ? expr1 : expr2
    If condition is true, evaluates expr1 (and returns its value); otherwise, evaluates and returns the value of expr2.
    expr1 ?? expr2
    If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.
    
    var visibility = isPublic ? 'public' : 'private';

  */
  print("? and ??");
  String name = "Derrick";
  String playerName(String? name) => name != null ? name : 'Guest';
  print(playerName(name));
  print(playerName(null));
  //Or
  String playerName2(String? name) => name ?? 'Guest';
  print(playerName2(name));
  print(playerName2(null));

  // Very long version uses if-else statement.
  String playerName3(String? name) {
    if (name != null) {
      return name;
    } else {
      return 'Guest';
    }
  }

  print(playerName3(name));
  print(playerName3(null));

  /*
  
    Cascade notation
    Cascades (.., ?..) allow you to make a sequence of operations on the same object. In addition to accessing instance members, you can also call instance methods on that same object. This often saves you the step of creating a temporary variable and allows you to write more fluid code.

    var paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    The previous example is equivalent to this code:

    var paint = Paint();
    paint.color = Colors.black;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 5.0;
    content_copy
    If the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation. Starting with ?.. guarantees that none of the cascade operations are attempted on that null object.

    querySelector('#confirm') // Get an object.
      ?..text = 'Confirm' // Use its members.
      ..classes.add('important')
      ..onClick.listen((e) => window.alert('Confirmed!'))
      ..scrollIntoView();

    The previous code is equivalent to the following:

    var button = querySelector('#confirm');
    button?.text = 'Confirm';
    button?.classes.add('important');
    button?.onClick.listen((e) => window.alert('Confirmed!'));
    button?.scrollIntoView();
    content_copy
    You can also nest cascades. For example:

    final addressBook = (AddressBookBuilder()
          ..name = 'jenny'
          ..email = 'jenny@example.com'
          ..phone = (PhoneNumberBuilder()
                ..number = '415-555-0100'
                ..label = 'home')
              .build())
        .build();
   */
}
