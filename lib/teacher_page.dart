import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import 'package:kids_education_platform/color_Scheme.dart';
import 'package:kids_education_platform/course_card.dart';
import 'package:kids_education_platform/date_card.dart';
import 'package:kids_education_platform/models/course.dart';
import 'package:kids_education_platform/models/tutuor.dart';
import 'package:readmore/readmore.dart';

class TeacherDeails extends StatelessWidget {
  final Tutor tutor;
  List<String> date = [];

  final course = Course.generateCourse();
  TeacherDeails({required this.tutor});

  @override
  Widget build(BuildContext context) {
    fetchNextDate();
    print("course");
    print(course[1].color);
    print(course[0].color);
    print(course[2].color);
    DateTime now = new DateTime.now();
    print(now);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:IconButton(onPressed: (){Navigator.of(context).pop();}, icon:Icon(Icons.arrow_back)) ,
        
      ),
      extendBodyBehindAppBar: true,
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
                          child: Hero(
                            tag: tutor.proPic,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 220,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(tutor.proPic),
                              )),
                            ),
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
                      moreStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: 'circe',
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Course by ${tutor.name}",
                      style: TextStyle(
                          fontFamily: 'product',
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) =>
                              CourseCard(course: course[index]),
                          separatorBuilder: (_, index) => SizedBox(
                                width: 10,
                              ),
                          itemCount: course.length),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                     Text(
                      "Availability",
                      style: TextStyle(
                          fontFamily: 'product',
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10,),
                   Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) =>
                              DateCard(date: date[index]),
                          separatorBuilder: (_, index) => SizedBox(
                                width: 10,
                              ),
                          itemCount: date.length),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                               _timeSlotWidget("11 AM",true),
                                _timeSlotWidget("12 PM",false),
                                 _timeSlotWidget("1 PM",false),
                                  _timeSlotWidget("2 AM",false)

                            ],
                          ),
                             Row(
                            children: [
                               _timeSlotWidget("11 AM",false),
                                _timeSlotWidget("12 PM",false),
                                

                            ],
                          )
                         
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 50,
        
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          color: darkBlue,
        ),
        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(primary: darkBlue), child: Text("Book Appoinment",style: TextStyle(color: Colors.white),)),
      ),
    );
  }




  void fetchNextDate() {
    print("function start");
    DateTime now = new DateTime.now();

    for (var i = 0; i < 10; i++) {
      var newDate = new DateTime(now.year, now.month, now.day + i);
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      final String formatted = formatter.format(newDate);
      date.add(formatted);
    }
    print(date);
  }

  Widget _timeSlotWidget(String time,bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 3,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected?Colors.pink:lightBlue.withOpacity(0.3)
      ),
      child: Row(
        children: [
          Icon(Icons.watch_later,color: Colors.grey,size: 13,),
          SizedBox(width: 3,),
          Text(time,style: TextStyle(fontSize: 10,fontFamily: 'circe',fontWeight: FontWeight.bold),)
        ],
      ),
    );

  }
}
