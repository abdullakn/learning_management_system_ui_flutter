import 'package:flutter/material.dart';
import 'package:kids_education_platform/models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: course.color
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(course.courseName,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                Text(course.grade,style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Container(
            height: 90,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(course.image),fit: BoxFit.contain)
            ),
          )
        ],
      ),
      
    );
  }
}