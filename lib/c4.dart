import 'package:coffeee/dtl.dart';
import 'package:flutter/material.dart';

import 'coff.dart';
import 'data.dart';
class c4 extends StatefulWidget {
  const c4({Key? key}) : super(key: key);

  @override
  State<c4> createState() => _c4State();
}

class _c4State extends State<c4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 10),
              child: Container(
                height: 50,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search Coffee',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount:coffee.length ,
                  itemBuilder: (context,index){
                return Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>c5(
                      img: coffee[index]['Img'],
                      d1: coffee[index]['dl'],
                      rs: coffee[index]['rs'],
                      name: coffee[index]['name']
                  )
                  )
                  );
                  },
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 5,blurStyle: BlurStyle.outer
                  )],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('assets/n/${coffee[index]['Img']}'),fit: BoxFit.cover)
                  ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(right: 10.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('${coffee[index]['name']}',style: l1,),
    Text('${coffee[index]['sub']}',style: l2,),
    Text('${coffee[index]['rs']}',style: l3,)
    ],
    ),
    ),
    Icon(Icons.add_box,size: 35,color: Colors.brown,)
    ],
    ),
                ),
    );
              }),
            ),

          ],
        ),
      ),
    );
  }
}
