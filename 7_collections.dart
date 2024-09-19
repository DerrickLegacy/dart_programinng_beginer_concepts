/*
Lists(Arrays)
Sets
Map

*/

void main(List<String> args) {
  // ******************** 1.LISTS ********************************
  var list = [1, 2, 3]; //Dart infers that list has type List<int>.

  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  //To create a list that's a compile-time constant, add const before the list literal:
  var constantList = const [1, 2, 3, 4, 5, 6, 7, 8];
  // constantList[1] = 1; // This line will cause an error.
  print(constantList);
  // *************************  SETS ************************
  var set = {1, 2, 3}; // Dart infers that set has type Set<int>.

  assert(set.contains(2));
  assert(!set.contains(4));

  set.add(4);
  assert(set.contains(4));

  set.remove(2);
  assert(!set.contains(2));

  var names = <String>{}; // declares an empty set
  Set<String> houses = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.

  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  }; // infers halogens as Set<String>
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

// To create a set that's a compile-time constant, add const before the set literal:
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
// constantSet.add('helium'); // This line will cause an error.
  print(constantSet);

// *********************** MAPS *****************
/*
  Key-Value Pairs
*/
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  }; // Dart infers type Map<String, String> and nobleGases has the type Map<int, String>.
  print('GIFTS:$gifts');
  print('NOBLE GASES : $nobleGases');

  //Map constructor:
  var gifts_two = Map<String, String>();
  // var gifts_two = new Map<String, String>(); //new keyword is optional
  gifts_two['first'] = 'partridge';
  gifts_two['second'] = 'turtledoves';
  gifts_two['fifth'] = 'golden rings';

  var nobleGases_two = Map<int, String>();
  nobleGases_two[2] = 'helium';
  nobleGases_two[10] = 'neon';
  nobleGases_two[18] = 'argon';

  // Retrieve a value from a map using the subscript operator ([]):

  var gifts_three = {'first': 'partridge'};
  assert(gifts_three['first'] == 'partridge');
  // assert(gifts_three.length != 2);

  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

// constantMap[2] = 'Helium'; // This line will cause an error.
  print(constantMap);

  var map = {
    1: 'one',
    2: 'two',
    3: 'three'
  }; // Dart infers that map has type Map<int, String>.

  assert(map[2] == 'two');

  map[2] = 'two-new';
  assert(map[2] == 'two-new');

  map.remove(1);
  assert(!map.containsKey(1));
  assert(map.length == 2);
  print(map);

  // **************Operators applicable on Dart Collection *********************
  // 1.spread operator (...)
  // 2.null-aware spread operator (...?)

  // Spread Operators
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  var list3 = null;
  assert(list2.length == 4);
  print("List 2: $list2");

  list2 = [0, ...list1, ...?list3];
  print("List 2: $list2");

  // ******************* Control-flow operators*************
  /*
  Dart offers 
    1. collection if 
    2.collection for for use in list, map, and set literals. 
    These help to build collections using conditionals (if) and repetition (for).
  */
  bool promoActive = true;
  var login = "Manager";
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];

  print("Nav : $nav");
  print("Nav2 : $nav2");
  // collection for
  var listOfIntegers = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfIntegers) '#$i'];
  assert(listOfStrings[1] == '#1');
  print("listOfStrings : $listOfStrings");
}
