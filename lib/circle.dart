import 'package:TestingApp/Area.dart';
import 'package:TestingApp/Perimeter.dart';
import 'package:TestingApp/point.dart';

class Circle extends Point implements Area, Perimeter {
  static const double pi = 3.1415;

  final double radio;
  Circle({this.radio});

  @override
  double area() {
    assert(this.radio != null);
    return pi * this.radio * this.radio;
  }

  @override
  double perimeter() {
    assert(this.radio != null);
    return 2 * this.radio * pi;
  }
}
