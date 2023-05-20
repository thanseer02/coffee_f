import 'package:coffeee/cofeeeq.dart';
import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
  body: SafeArea(
      child: Stack(
        children:[
          Container(
          height: 300,
          width: 450,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/b.jpg'),fit: BoxFit.cover)
          ),
            child: Stack(
              children: [
                Icon(Icons.align_horizontal_left,color: Colors.white,size: 35,)
              ],
            ),
        ),
           Positioned(
             left: 230,
              top: 150,
             child: Column(
               children: [
                 Row(
                   children: [
                     Text('Its Great',style: TextStyle(color: Colors.white60,fontSize: 22),),
                     Text(' Day For',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                   ],
                 ),
                 Text(' coffee',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),

               ],
             ),
           ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                topRight: Radius.circular(50))
              ),
              height: 515,
              width: MediaQuery.of(context).size.width,
              child: c1()
            ),
          )
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 460,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))
          //     ),
          //     child: Column(
          //       children: [
          //         TabBar(
          //           indicatorWeight: 0.1,
          //             labelStyle: TextStyle(fontWeight: FontWeight.w800),
          //             unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.black12),
          //             labelColor: Colors.black,
          //             tabs: [
          //           Tab(
          //             text: 'Hot Coffee',
          //           ),
          //           Tab(
          //             text: 'Cold Coffee',
          //           ),
          //           Tab(
          //             text: 'Others',
          //           ),
          //         ]),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //           child: TextField(
          //             decoration: InputDecoration(
          //               prefixIcon: Icon(Icons.search),
          //             hintText: 'Search for your coffee',
          //             enabledBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Colors.grey),
          //               borderRadius: BorderRadius.circular(50),
          //             )
          //           ),),
          //         ),
          //       SizedBox(height: 20,),
          //       Container(
          //         height: 100,
          //         color: Colors.red,
          //         child: ListTile(
          //           leading: Container(
          //               height: 200,
          //               width: 100,
          //               decoration: BoxDecoration(
          //                 image: DecorationImage(image: AssetImage('assets/New folder/a.jpg'),fit: BoxFit.cover,))),
          //           title: Text('name'),
          //           subtitle: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text('good coffee'),
          //               Text('15'),
          //             ],
          //           ),
          //           trailing: Icon(Icons.add_box,color: Colors.brown,size: 40,),
          //         ),
          //       )
          //       ],
          //     ),
          //   ),
          // ),
      ]
      ),
  ),
      ),
    );
  }
}
