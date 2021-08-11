import 'package:flutter/cupertino.dart';
import 'package:movas/movas.dart';
import 'package:movas_counter_app/movas/stores/counter/counter_store.dart';

class CounterA {
  late CounterStore counterStore;
  CounterA({required this.counterStore});

  Future<void> incrementCounter() async {
    return counterStore.incrementCounter();
  }

  factory CounterA.of(BuildContext context) => CounterA(counterStore: StaticProvider.of(context));
}
