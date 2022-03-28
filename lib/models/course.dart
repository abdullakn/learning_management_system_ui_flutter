import 'package:flutter/material.dart';
import "dart:math";

class Course {
  String courseName;
  String grade;
  late Color color;
  String image;

  Color randomColor() {
    var list = [Colors.yellow[400], Colors.orange[100], Colors.red[300],Colors.teal[300],Colors.greenAccent,Colors.grey.withOpacity(0.5),Colors.indigo[200]];
    final _random = new Random();
    var element = list[_random.nextInt(list.length)];
    return element as Color;
  }

  Course({required this.courseName, required this.grade, required this.image}) {
    this.color = randomColor();
  }

  static List<Course> generateCourse() {
    return [
      Course(
          courseName: "Photoshp",
          grade: "3-5",
          image: "assets/images/icon1.png"),
      Course(
          courseName: "Design UI",
          grade: "3-5",
          image: "assets/images/icon2.png"),
      Course(
          courseName: "Cinematic\nEditing",
          grade: "3-5",
          image: "assets/images/icon3.png")
    ];
  }
}
