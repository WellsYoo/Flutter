import 'package:flutter/material.dart';
import 'package:flutter_count_app/TabBarPageFirst.dart';
import 'package:flutter_count_app/TabBarPageSecond.dart';
import 'package:flutter_count_app/TabBarPageThree.dart';
import 'package:flutter_count_app/TabBarPageFour.dart';
import 'package:flutter_count_app/GSYTabBarWidget.dart';


class TabBarBottomPageWidget extends StatefulWidget {
  @override
  _TabBarBottomPageWidgetState createState() => _TabBarBottomPageWidgetState();
}

class _TabBarBottomPageWidgetState extends State<TabBarBottomPageWidget> {
  final PageController topPageControl = PageController();
  final List<String> tab = ["动态", "趋势", "我的"];

  @override
  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.BOTTOM_TAB,
        ///渲染tab
        tabItems: _renderTab(),
        ///渲染页面
        tabViews: _renderPage(),
        topPageControl: topPageControl,
        backgroundColor: Colors.red,
        indicatorColor: Colors.white,
        title: new Text("YWHGithubFlutter"));
  }

  _renderTab() {
    List<Widget> list = List();
    for (int i = 0; i < tab.length; i++) {
      list.add(FlatButton(
          onPressed: () {
            topPageControl.jumpTo(MediaQuery.of(context).size.width * i);
          },
          child: Text(
            tab[i],
            maxLines: 1,
          )));
    }
    return list;
  }

  _renderPage() {
    return [
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThree(),
      TabBarPageFour(),
    ];
  }
}
