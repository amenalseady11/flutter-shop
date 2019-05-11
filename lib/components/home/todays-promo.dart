import 'package:flutter/material.dart';

class TodaysPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 136.0,
        child: CustomScrollView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            slivers: <Widget>[
              new SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 0.0),
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
                                            const Color.fromRGBO(
                                                49, 80, 180, 1.0),
                                            const Color.fromRGBO(
                                                15, 44, 145, 1.0)
                                          ])),
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
                                            const Color.fromRGBO(
                                                49, 80, 180, 1.0),
                                            const Color.fromRGBO(
                                                15, 44, 145, 1.0)
                                          ])),
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
                                            const Color.fromRGBO(
                                                49, 80, 180, 1.0),
                                            const Color.fromRGBO(
                                                15, 44, 145, 1.0)
                                          ])),
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
                                            const Color.fromRGBO(
                                                49, 80, 180, 1.0),
                                            const Color.fromRGBO(
                                                15, 44, 145, 1.0)
                                          ])),
                                )
                              ],
                            ),
                        childCount: 1),
                  ))
            ]));
  }
}
