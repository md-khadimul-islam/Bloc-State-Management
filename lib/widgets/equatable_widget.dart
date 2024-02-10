import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableWidget extends StatefulWidget {
  const EquatableWidget({super.key});

  @override
  State<EquatableWidget> createState() => _EquatableWidgetState();
}

class _EquatableWidgetState extends State<EquatableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person = const Person(name: 'Khadimul', age: 20);
          Person person1 = const Person(name: 'Khadimul', age: 400);

          print(person.hashCode.toString());

          print(person1.hashCode.toString());

          print(person == person1);
        },
      ),
    );
  }
}

class Person extends Equatable {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];

  // Without Equatable Package type this code
  // @override
  // bool operator ==(Object other) {
  //   return identical(this, other) ||
  //       other is Person &&
  //           runtimeType == other.runtimeType &&
  //           name == other.name &&
  //           age == other.age;
  // }

  // @override
  // int get hashCode => name.hashCode ^ age.hashCode;
}
