import 'package:flutter/material.dart';
import 'package:kids_education_platform/color_Scheme.dart';
import 'package:kids_education_platform/models/tutuor.dart';
import 'package:kids_education_platform/tutuor_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final tutor = Tutor.getAllTutor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/searchBg.png'),
            )),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 16, fontFamily: 'circe'),
                  ),
                  Text(
                    'John Doe',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'circe',
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
                            )),
                        Expanded(
                            child: TextFormField(
                          style: TextStyle(fontSize: 18, fontFamily: 'circe'),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for Course and Tutuor'),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top Rated Tutuor",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )),
                      Text(
                        "See All",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 13),
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: tutor.map((e) => TutorCard(tutor: e)).toList()
                          // Container(
                          //   margin: EdgeInsets.only(top: 24),
                          //   child: ListView.builder(
                          //     itemCount: 30,
                          //     itemBuilder: (BuildContext context, int index) =>
                          //         ListTile(
                          //       title: Text("List Item ${index + 1}"),
                          //     ),
                          //   ),
                          // )
                          //  Container(
                          //    height: 150,
                          //    color: Colors.red,
                          //  ),
                          //    Container(
                          //    height: 150,
                          //    color: Colors.green,
                          //  ),
                          //    Container(
                          //    height: 150,
                          //    color: Colors.blue,
                          //  ),
                        // ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
