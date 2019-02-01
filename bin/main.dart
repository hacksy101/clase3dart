import 'package:TestingApp/circle.dart';

main(List<String> arguments) {
  Circle circle = Circle(radio: 21);
  print("Area: ${circle.area().round()}");
  print("Perimetro: ${circle.perimeter().round()}");
  print("Area: ${circle.area().round()}");
}
