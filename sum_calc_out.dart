import 'areacalculator.dart';

class SumCalcOutputter {
  AreaCalculator areas;
  SumCalcOutputter(this.areas);

  JSON() {
    return {"data": this.areas.sum()};
  }

  HTML() {}
  ToString() {
    return this.areas.sum().toString();
  }
}
