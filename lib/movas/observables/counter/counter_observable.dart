import 'package:movas_counter_app/movas/observables/counter/counter_entity.dart';

class CounterO {
  int counter;

  CounterO({this.counter = 0});

  factory CounterO.fromE(CounterE counterE) => CounterO(counter: counterE.counter);

  CounterO copyWith({int counter = 0}) {
    return CounterO(counter: counter);
  }
}
