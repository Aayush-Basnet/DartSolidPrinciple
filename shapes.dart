import 'dart:math';

abstract class ShapeInterface {
  area();
}

abstract class SolidShapeInterface {
  volume();
}

abstract class ManageShapeInterface {
  calculate();
}

class Cubiod
    implements ShapeInterface, SolidShapeInterface, ManageShapeInterface {
  @override
  area() {
    // TODO: implement area
    // throw UnimplementedError();
  }

  @override
  calculate() {
    // TODO: implement calculate
    return this.area() + this.volume();
    throw UnimplementedError();
  }

  @override
  volume() {
    // TODO: implement volume
    //throw UnimplementedError();
  }
}

class Square implements ShapeInterface, ManageShapeInterface {
  int length;
  Square(this.length);

  area() {
    return pow(this.length, 2);
  }

  @override
  calculate() {
    // TODO: implement calculate
    return this.area();
    // throw UnimplementedError();
  }
}

class Circle implements ShapeInterface {
  int radius;
  Circle(this.radius);

  area() {
    return pi * pow(this.radius, 2);
  }
}
