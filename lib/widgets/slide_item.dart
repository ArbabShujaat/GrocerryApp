
import 'package:flutter/material.dart';



class SlideItem extends StatefulWidget {

  final String img;
  final String title;
  final String price;
  final bool favorite;
  final String weight;


  SlideItem({
    Key key,
    @required this.img,
    @required this.title,
    @required this.price,
    @required this.favorite,
     @required this.weight,
  })
      : super(key: key);

  @override
  _SlideItemState createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
   
       
        width: MediaQuery.of(context).size.width / 2.5,
        child: Card(
     
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height/6.5,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "${widget.img}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 6.0,
                    right: 6.0,
                   
                    
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child:widget.favorite?
                            Icon(
                              Icons.favorite,
                              color: Colors.green,
                              size: 18,
                            ): Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                              size: 18,
                            ),

                         
                        
                      ),
                   
                  ),

                  Positioned(
                    top: 6.0,
                    left: 6.0,
                    child: Card(
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(3.0)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child:Text(
                          widget.weight,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),

              SizedBox(height: 7.0),

              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${widget.title}",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height:4)
                        ,Text(
                        "${widget.price}",
                        style: TextStyle(
                          fontSize:12,
                          fontWeight: FontWeight.bold
                          ,
                          color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 7.0),

         
         

           

            ],
          ),
        ),
      ),
    );
  }
}
