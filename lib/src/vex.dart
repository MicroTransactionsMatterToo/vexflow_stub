import 'package:js/js.dart';

@anonymous
@JS()
abstract class RuntimeError {
  // Contructor
  external factory RuntimeError(dynamic code, dynamic message);

  // Generic Methods
  external String toString();
}

@JS()
class Vex {
  // Functions
  external Exception MakeException(String name);

  external L(String block, List<dynamic> args);

  external Map<dynamic, dynamic> Merge(Map<dynamic, dynamic> destination,
      Map<dynamic, dynamic> source);

  external void forEach(Iterable<dynamic> a, Function fn);
  external num RoundN(num x, num n);
  external num MidLine(num a, num b);




  // Getters
  external dynamic get RuntimeError;
  external Function get Max;
  external Function get Min;

  // Setters
  external set RuntimeError(RuntimeError);

  external set RERR(RuntimeError);
  external set Max(Function Max);
  external set Min(Function Min);
}

