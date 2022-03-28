import 'package:flutter/material.dart';
import 'package:kids_education_platform/color_Scheme.dart';
import 'package:kids_education_platform/models/tutuor.dart';

class TutorCard extends StatelessWidget {
  final Tutor tutor;
  const TutorCard({required this.tutor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 130,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: lightBlue.withOpacity(0.5)),
      child: Row(
        children: [
          Container(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                  child: Container(
                    height: 130,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/iconBgNew.png",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Icon(
                      Icons.star,
                      color: darkBlue,
                      size: 50,
                    )),
                Positioned(
                    top: 25,
                    left: 25,
                    child: Text(
                      tutor.rating,
                      style: TextStyle(color: Colors.white),
                    )),
                Positioned(
                    left: 50,
                    child: Container(
                      width: 100,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(tutor.proPic),
                              fit: BoxFit.cover)),
                    ))
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text("Grade : ${tutor.grade}",style: TextStyle(color: Colors.grey),)
                  ],
                ),
                SizedBox(height: 5,),
                Text(tutor.name,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                 Text("${tutor.subject} TEACHER",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: darkBlue),),
                 Expanded(child: Align(
                   alignment: Alignment.centerLeft,
                   child: Text("\$${tutor.price} / session"),
                 ))
              ],

            ),
          ))
        ],
      ),
    );
  }
}
