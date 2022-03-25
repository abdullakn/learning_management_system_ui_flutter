import 'package:flutter/material.dart';
import 'package:kids_education_platform/color_Scheme.dart';

class HomePage extends StatelessWidget {
   HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,size: 30,)),
          actions: [
            
            IconButton(onPressed: (){}, icon:Icon(Icons.notifications_none,color: Colors.black,size: 30,)),
            SizedBox(width: 10,),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/searchBg.png'),)
              ),
              child: Container(
                padding: EdgeInsets.all(20),
               
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello',style: TextStyle(fontSize: 16,fontFamily: 'circe'),),
                    Text('John Doe',style: TextStyle(fontSize: 30,fontFamily: 'circe',fontWeight: FontWeight.w700),),
                    Expanded(child:Container() ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,size: 20,)),
                          Expanded(child: TextFormField(
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'circe'
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for Course and Tutuor'

                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,)

                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}