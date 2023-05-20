import 'package:coffeee/coff.dart';
import 'package:flutter/material.dart';
class c5 extends StatefulWidget {
   c5({Key? key,required this.img,required this.d1,required this.rs,required this.name}) : super(key: key);
  var img,d1,rs,name;
  @override
  State<c5> createState() => _c5State();
}

class _c5State extends State<c5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/n/${widget.img}'),fit: BoxFit.cover)
              ),
            ),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.white,),),
          
            Align(
              alignment: Alignment.bottomCenter,
              child: Container( 
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                ),
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text('${widget.name}',style: d1,),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber,size: 30,),
                          Icon(Icons.star,color: Colors.amber,size: 30),
                          Icon(Icons.star,color: Colors.amber,size: 30),
                          Icon(Icons.star,color: Colors.amber,size: 30),
                          Icon(Icons.star,color: Colors.amber,size: 30),

                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Discription',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(
                        height: 5,
                      ),
                      Text('${widget.d1}',style: d2,),
                      SizedBox(
                        height: 20,
                      ),
                      Text(' Price',style: TextStyle(fontSize: 16),),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$${widget.rs}0',style: d3,),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurStyle: BlurStyle.outer,blurRadius: 10)]
                            ),
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.brown),
                                onPressed: (){},
                                child: Text('Add to cart')),
                          )
                        ],
                      )
                      
                    ],
                  ),
                ),
              ),),
            )

          ],
        ),
      ),
    );
  }
}
