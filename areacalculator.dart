import 'shapes.dart';

class AreaCalculator {
  List<dynamic> shapes;
  AreaCalculator(this.shapes);

  num sum() {
    List<num> area = <num>[];
    for (var shape in shapes) {
      if (shape is ShapeInterface) {
        area.add(shape.area());
        continue;
      }
      throw new Exception("Shape Exception");
    }
    return area.reduce((x, y) => x + y);
  }
}
