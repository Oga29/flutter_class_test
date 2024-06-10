import 'package:flutter/material.dart';
class Country {
  int id;
  String name;

  Country(this.id, this.name);

  @override
  String toString() {
    return name;
  }
}


List<Country> countries = [
  Country(1, 'Kazakhstan'),
  Country(2, 'Spain'),
  Country(3, 'UK'),
];

class Human {
  int age;
  String name;
  Country? country;

  Human({this.age = 0, this.name = 'unknown', this.country});

 
  void setAge(int age) {
    this.age = age;
  }

  void setName(String name) {
    this.name = name;
  }

  void setCountry(Country country) {
    this.country = country;
  }

  
  void printInfo() {
    print('Name: $name, Age: $age, Country: ${country?.name ?? 'None'}');
  }
}

class Worker extends Human {
  int experience;
  String currentWorkplace;

  Worker({int age = 0, String name = 'unknown', Country? country, this.experience = 0, this.currentWorkplace = 'None'})
      : super(age: age, name: name, country: country);

  void work() {
    print('$name is working.');
  }

  void increaseExperience(int incrementer) {
    experience += incrementer;
  }

  void decreaseExperience(int decrementer) {
    experience -= decrementer;
  }

  void changeWorkPlace(String newValue) {
    currentWorkplace = newValue;
  }

  @override
  void printInfo() {
    super.printInfo();
    print('Experience: $experience, Current Workplace: $currentWorkplace');
  }
}

void main() {
  for (var country in countries) {
    print(country); 
  }

  Human human = Human();
  human.printInfo(); 
  human.setAge(22);
  human.setName('oga');
  human.setCountry(countries[0]);
  human.printInfo(); 
  Worker worker = Worker(name: 'Danya', age: 25, country: countries[1], experience: 5, currentWorkplace: 'Google');
  worker.printInfo(); 
  worker.work(); 
  worker.increaseExperience(2);
  worker.decreaseExperience(1);
  worker.changeWorkPlace('Microsoft');
  worker.printInfo(); 
}