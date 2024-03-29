import 'package:flutter/material.dart';
import 'package:flutter_count_app/GSYTabBarWidget.dart';
import 'package:flutter_count_app/TabBarPageFirst.dart';
import 'package:flutter_count_app/TabBarPageFour.dart';
import 'package:flutter_count_app/TabBarPageSecond.dart';
import 'package:flutter_count_app/TabBarPageThree.dart';

/**
 * Created by guoshuyu
 * on 2018/7/29.
 */

class TabBarPageWidget extends StatefulWidget {
  @override
  _TabBarPageWidgetState createState() => _TabBarPageWidgetState();
}

class _TabBarPageWidgetState extends State<TabBarPageWidget> {
  final PageController topPageControl = new PageController();

  final List<String> tab = ["111", "222", "333", "444", "555", "666", "777", "888", "999", "1010", "1111", "1212", "1313", "1414", "!515", "1616"];

  _renderTab() {
    List<Widget> list = new List();
    for (int i = 0; i < tab.length; i++) {
      list.add(new FlatButton(onPressed: () {
        topPageControl.jumpTo(MediaQuery
            .of(context)
            .size
            .width * i);
      }, child: new Text(
        tab[i],
        maxLines: 1,
      )));
    }
    return list;
  }

  _renderPage() {
    return  [
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree(),
      new TabBarPageFour(),
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree(),
      new TabBarPageFour(),
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree(),
      new TabBarPageFour(),
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree(),
      new TabBarPageFour(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.TOP_TAB,
        tabItems: _renderTab(),
        tabViews: _renderPage(),
        topPageControl: topPageControl,
        backgroundColor: Colors.lightBlue,
        indicatorColor: Colors.white,
        title: new Text("Test"));
  }
}
