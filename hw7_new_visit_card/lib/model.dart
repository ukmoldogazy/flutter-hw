import 'package:flutter/material.dart';

class Student {
  final String name;
  final String sureName;
  int age;
  String? phoneNumber;
  final String email;
  String address;
  int group;
  final String? gender;
  String status;

  Student({
    required this.name,
    required this.sureName,
    required this.age,
    this.phoneNumber,
    required this.email,
    required this.address,
    required this.group,
    this.gender,
    required this.status,
  });
}
