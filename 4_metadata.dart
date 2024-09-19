/*
META DATA
Use metadata to give additional information about your code. A metadata annotation begins with the character @, followed by either a reference to a compile-time constant (such as deprecated) or a call to a constant constructor.

Four annotations are available to all Dart code:
    @Deprecated : Specifying a message, 
    @deprecated : If you dont want to specify a message, 
    @override  :Extending class,  
    @pragma. 
    
  Metadata can appear before a library, class, typedef, type parameter, constructor, factory, function, field, parameter, or variable declaration and before an import or export directive.    

*/
class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

class Television {
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  void turnOn() {
    print("On");
  }
}

class TestToDo {
  @Todo('Dash', 'Implement this function')
  void doSomething() {
    print('Do something');
  }
}
