import 'package:flutter/material.dart';
import 'package:kids_education_platform/color_Scheme.dart';
import 'package:kids_education_platform/home_page.dart';
import 'package:kids_education_platform/sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    
      home: const MyHomePage(),
      routes: {
        '/HomePage':(context)=>HomePage()
      },
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: SafeArea(child: Column(
        children: [
         Container(
          
           padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("GoKids.com",style: TextStyle(fontSize: 20,fontFamily: 'circe',fontWeight: FontWeight.w500),),
               Text("Skip",style: TextStyle(fontSize: 14,fontFamily: 'circe',fontWeight: FontWeight.w500),),
             ],
           ),
         ),
         SizedBox(height: 10,),
         Container(
           
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height*0.4,
           decoration: BoxDecoration(
           
             image: DecorationImage(image: AssetImage('assets/images/splash.png',),fit: BoxFit.cover)
           ),
         ),
         Expanded(child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text('Where Kids Love Leraning',style: TextStyle(fontSize: 12,fontFamily: 'circe',),),
             Text('Distant Learning & Home \nSchooling Made Easy',style: TextStyle(fontSize: 20,fontFamily: 'circe',fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
             Text('Book Filtered top rated professional \nTutuors from the comfort\nJust One click to Learn more Things',style: TextStyle(fontSize: 12,fontFamily: 'circe',fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
             Center(
               child: Container(
               
                 decoration: BoxDecoration(

                   border: Border.all(width: 15,color: Colors.black.withOpacity(0.1)),
                   shape: BoxShape.circle
                 ),
                 child: Container(
                   padding: EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color:darkBlue
                   ),
                   child: IconButton(onPressed: (){openHomePage();}, icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,)),
                 ),
               ),
             )

           ],

         ))
        ],
      )),


    );
  }

  void openHomePage(){
    Navigator.pushNamed(context,'/HomePage');
  }
}