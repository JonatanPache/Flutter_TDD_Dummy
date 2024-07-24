// Callable class

void main(){
  // creating new object dart
  final callableClass = CallableClass();

  // initializate call
  callableClass('Jon');
}

class CallableClass {
  void call(String message){
    print('Hello world, ${message}');
  }
}