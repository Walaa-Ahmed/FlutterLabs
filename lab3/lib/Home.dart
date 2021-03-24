import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Home"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.add_shopping_cart)
                ],)
            ],
          )
      )
      ,
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20,),
                  Text("""sara poly silk Embellished , Woven Salwar Sult Material (Unstlched)""", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)
                      ,border: Border.all(
                        color: Colors.white,
                        width: 1
                    ),
                    ),

                    child: Text("Special price", style: TextStyle(fontSize: 14, color: Colors.red,),
                      textAlign: TextAlign.left,),
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text(" 549  "),
                    Text(" 1893  ",
                      style: TextStyle(decoration: TextDecoration.lineThrough),),
                    Text(" 70% off  ",
                      style: TextStyle(color: Colors.red),)
                  ],),
                  SizedBox(height: 20,),
                  Container(
                    width: 120,
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)
                          ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                        ),

                            child: Text("4.3", style: TextStyle(color: Colors.red),)),
                        Text("2814 rating "),
                      ],),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 15,),
                  Text("Size"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 8,),
                  Text("tip : for the best result buy one size larger"
                    , style: TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                          ),

                          child: Text("XS",style: TextStyle(color: Colors.red),)),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                          ),

                          child: Text("S",style: TextStyle(color: Colors.red),)),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                          ),

                          child: Text("M",style: TextStyle(color: Colors.red),)),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                          ),

                          child: Text("L",style: TextStyle(color: Colors.red),)),

                    ],),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 15,),
                  Text("Color"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Container(
                        child: SizedBox(height: 40, width: 40,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.black
                        ),
                      ),
                      Container(
                        child: SizedBox(height: 40, width: 40,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.red
                        ),
                      ),
                      Container(
                        child: SizedBox(height: 40, width: 40,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.blue
                        ),
                      ),
                    ],),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 15,),
                  Text("Product Details"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(

                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Color" , textAlign: TextAlign.left,style: TextStyle(color: Colors.grey),),
                            Text("Length" , textAlign: TextAlign.left,style: TextStyle(color: Colors.grey),),
                            Text("Type",style: TextStyle(color: Colors.grey),),
                            Text("Sleeve",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        width: 130,
                        alignment: Alignment.centerLeft,
                      )
                      ,
                      Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Yellow"),
                            Text("Knee Length"),
                            Text("Bandage"),
                            Text("Cap Sleeve"),
                          ],
                        ),
                        width: 150,
                        alignment: Alignment.centerLeft,
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 15,),
                  Text("Product Description"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Text("sara poly silk Embellished , Woven Salwar Sult Material,"
                      "sara poly silk Embellished , Woven Salwar Sult Material "
                    , style: TextStyle(
                      fontSize: 14,

                    ),
                    textAlign: TextAlign.left,),

                  SizedBox(height: 15,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}