import 'package:test/test.dart';
import 'package:TestingApp/circle.dart';
import 'dart:io' as io;

@Tags(const ["consola"])
void main() {
  Circle circle;

  setUp(() {
    circle = Circle(radio: 5.0);
  });

  group('Test positivos del circulo', () {
    test('Calculando el area del circulo', () {
      expect(circle.area(), equals(78.53750000000001)); //5.0*5.0*3.1415);
    });

    test('Calculando el perimetro de un circulo', () {
      expect(circle.perimeter(), equals(31.415000000000003));
    });
  });

  group('Test negativos del circulo', () {
    test('Area debe ser diferente de cero', () {
      expect(circle.area(), isNot(0));
    });

    test('Perimetro debe ser diferente de 0', () {
      expect(circle.area(), isNot(0));
    });
  });

  group('Test falla de circulo', () {
    test('Area del circulo falla al calcular', () {
      Circle circle = Circle();
      expect(() => circle.area(), throws);
    });
    test('Area del perimetro falla al calcular', () {
      Circle circle = Circle();
      expect(() => circle.perimeter(), throws);
    });
  });

  test('Este test se implementara en una semana', () {
    expect(circle.perimeter(), equals(33.0));
  }, skip: "Codigo no Implementando");
  test('Este test demora una hora', () {
    io.sleep(Duration(seconds: 15));
  }, timeout: Timeout(Duration(seconds: 1)));
}
