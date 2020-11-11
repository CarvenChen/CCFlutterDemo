//
// cc_navigator_01_page.dart 文件名
// cc_flutter_demo
//
// Copyright 2020 CC. All rights reserved.
// Created by 陈海华 on 2020/09/11.

import 'package:cc_flutter_demo/01_navigator_demo/cc_navigator_next_page.dart';
import 'package:flutter/material.dart';

class CCNavigatorPreviousPage extends StatefulWidget {
  @override
  _CCNavigatorPreviousPageState createState() => _CCNavigatorPreviousPageState();
}

class _CCNavigatorPreviousPageState extends State<CCNavigatorPreviousPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('previousPage'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            this.pushNextPage();
          },
          child: Container(
            width: 100,
            height: 50,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text('第一页'),
          ),
        ),
      ),
    );
  }

  void pushNextPage() {
    Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => CCNavigatorNextPage()
      )
    ).then((value) {

      }
    );

    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>CCNavigatorNextPage()), (route) => false);

    // Navigator.of(context).pushNamed("/second");
    // Navigator.of(context).pushNamedAndRemoveUntil(
    //   "/second", 
    //   (route){
    //     return true;
    // });
  }
}
