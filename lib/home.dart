import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'styles/palette.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeState createState() {
    return new _HomeState();
  }
}

class _HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 54, left: 24, right: 24),
        child: new Column(
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

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),

                new Row(
                  children: <Widget>[
                    new Text('View all', style: TextStyle(fontSize: 12, color: Palette.purple)),
                    new SizedBox(width: 4),
                    new Icon(Icons.arrow_forward, size: 16, color: Palette.purple)
                  ]
                )
              ]
            ),

            Container(
              height: 80.0,
              transform: Matrix4.translationValues(-10,0,0),
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    sliver: new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                        (context, index) => new Row(
                          children: <Widget>[
                            Category(
                              image: new SvgPicture.asset('assets/img/categories/living-room.svg'),
                              name: 'Living Room',
                            ),
                            Category(
                              image: new SvgPicture.asset('assets/img/categories/bathroom.svg'),
                              name: 'Bath Room',
                            ),
                            Category(
                              image: new SvgPicture.asset('assets/img/categories/workspace.svg'),
                              name: 'Workspace',
                              marginRight: 0,
                            )
                          ],
                        ),
                        childCount: 1,
                      ),
                    ),
                  ),
                ],
              )
            ),

            new SizedBox(height: 24),

            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text("Today's Promo", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),

                  new Row(
                      children: <Widget>[
                        new Text('View all', style: TextStyle(fontSize: 12, color: Palette.purple)),
                        new SizedBox(width: 4),
                        new Icon(Icons.arrow_forward, size: 16, color: Palette.purple)
                      ]
                  )
                ]
            ),

            SizedBox(height: 16),
            // Today's Promo
            Container(
              height: 136.0,
              transform: Matrix4.translationValues(-10,0,0),
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    sliver: new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                        (context, index) => new Row(
                        children: <Widget>[
                            Container(
                                width: 224,
                                height: 136,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      const Color.fromRGBO(49, 80, 180, 1.0),
                                      const Color.fromRGBO(15, 44, 145, 1.0)
                                    ]
                                  )
                                ),
                              ),
                            Container(
                                width: 224,
                                height: 136,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          const Color.fromRGBO(49, 80, 180, 1.0),
                                          const Color.fromRGBO(15, 44, 145, 1.0)
                                        ]
                                    )
                                ),
                              ),
                            Container(
                                width: 224,
                                height: 136,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          const Color.fromRGBO(49, 80, 180, 1.0),
                                          const Color.fromRGBO(15, 44, 145, 1.0)
                                        ]
                                    )
                                ),
                              ),
                            Container(
                              width: 224,
                              height: 136,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomLeft,
                                    colors: [
                                      const Color.fromRGBO(49, 80, 180, 1.0),
                                      const Color.fromRGBO(15, 44, 145, 1.0)
                                    ]
                                  )
                                ),
                              )
                          ],
                        ),
                        childCount: 1
                      ),
                    ),
                  ),
                ],
              )
            ),

            SizedBox(height: 24),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text("Trending Furniture", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),

                new Row(
                  children: <Widget>[
                    new Text('View all', style: TextStyle(fontSize: 12, color: Palette.purple)),
                    new SizedBox(width: 4),
                    new Icon(Icons.arrow_forward, size: 16, color: Palette.purple)
                  ]
                )
              ]
            ),
            SizedBox(height: 24),

            // Trending Furniture
            Container(
              height: 136.0,
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                    sliver: new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                          (context, index) => new Row(
                          children: <Widget>[
                            Container(
                              width: 240,
                              height: 136,
                              margin: EdgeInsets.only(right: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/img/trending/1.jpg'),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                            Container(
                              width: 240,
                              height: 136,
                              margin: EdgeInsets.only(right: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/img/trending/2.jpg'),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Container(
                              width: 240,
                              height: 136,
                              margin: EdgeInsets.only(right: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/img/trending/1.jpg'),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Container(
                              width: 240,
                              height: 136,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/img/trending/2.jpg'),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )
                          ],
                        ),
                        childCount: 1,
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Icon(Icons.home),
            ),

            Container(
              child: Icon(FontAwesomeIcons.envelope, size: 18),
            ),

            Container(
              child: Icon(FontAwesomeIcons.box, size: 18),
            ),
          ]
        )
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({
    Key key,
    this.image,
    this.name,
    this.marginRight
  }) : super(key: key);

  var image;
  var name;
  double marginRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 72,
      margin: EdgeInsets.only(right: marginRight == null ? 16.0 : marginRight),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0,0,0,0.05),
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: 5.0, // has the effect of extending the shadow
            offset: Offset(0, 0)
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          image,
          new SizedBox(height: 8),
          new Text(name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}