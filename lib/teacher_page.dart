import 'package:flutter/material.dart';
import 'package:kids_education_platform/color_Scheme.dart';
import 'package:kids_education_platform/course_card.dart';
import 'package:kids_education_platform/models/course.dart';
import 'package:kids_education_platform/models/tutuor.dart';
import 'package:readmore/readmore.dart';

class TeacherDeails extends StatelessWidget {
  final Tutor tutor;
  final course=Course.generateCourse();
   TeacherDeails({required this.tutor});

  @override
  Widget build(BuildContext context) {
    print("course");
    print(course[1].color);
    print(course[0].color);
    print(course[2].color);
    DateTime now = new DateTime.now();
    print(now);
    return Scaffold(
      backgroundColor: Color(0xffe7f4f5),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 260,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 240,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/iconBgNew.png"),
                                    fit: BoxFit.cover)),
                          )),
                      Positioned(
                          left: 20,
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 220,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(tutor.proPic),
                            )),
                          )),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tutor.name,
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'product',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${tutor.subject} Tutor",
                        style: TextStyle(
                            fontFamily: 'circe',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: darkBlue),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: darkBlue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${tutor.rating} rating",
                            style: TextStyle(fontFamily: 'circe'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.palette,
                            color: darkBlue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("5 years of experience")
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                          fontFamily: 'product',
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReadMoreText(
                      tutor.about,
                      trimLines: 3,

                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '..Read More',
                      style: TextStyle(fontSize: 15),
                      trimExpandedText: ' Less',
                      moreStyle: TextStyle(fontSize: 12, fontFamily: 'circe',color: Colors.blue),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Course by ${tutor.name}",
                      style: TextStyle(
                          fontFamily: 'product',
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: ListView.separated(
                        
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(_,index)=>CourseCard(course: course[index]),
                         separatorBuilder: (_,index)=>SizedBox(width: 10,), 
                         itemCount: course.length),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
