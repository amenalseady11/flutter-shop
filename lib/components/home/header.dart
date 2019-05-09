import 'package:flutter/material.dart';
import '../../styles/palette.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('Furniture Shop', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700)),
                new Text('Get unique furniture from home', style: TextStyle(color: Palette.gray60, fontSize: 14.0))
              ]
            ),

            new Container(
              margin: EdgeInsets.only(top: 5),
              child: Stack(
                children: <Widget>[
                  Icon(Icons.shopping_cart),
                  Container(
                    width: 14,
                    height: 14,
                    transform: Matrix4.translationValues(14, -4.0, 0),
                    decoration: BoxDecoration(
                      color: Palette.purple,
                      border: Border.all(width: 2.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(25.0)
                    ),
                    child: new Center(
                      child: new Text('1', style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w700, color: Colors.white)),
                    )
                  ),
                ]
              )
            )
          ],
        ),

        new SizedBox(height: 16),

        new Container(
          width: double.infinity,
          height: 36,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color.fromRGBO(177,173,173,0.20)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0,0,0,0.05),
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 5.0, // has the effect of extending the shadow
                    offset: Offset(0, 0)
                )
              ],
              borderRadius: BorderRadius.circular(6)
          ),
          child: new Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(Icons.search, color: Palette.gray),
              ),
              Expanded(
                  child: TextFormField(
                    autofocus: false,
                    style: new TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                      hintText: 'Search unique furniture...',
                      border: InputBorder.none,
                    ),
                  )
              )
            ],
          ),
        ),
        new SizedBox(height: 24),
      ],
    );
  } 
}