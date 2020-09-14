//
// cc_navigator_next_page.dart 文件名
// cc_flutter_demo
//
// Copyright 2020 CC. All rights reserved.
// Created by 陈海华 on 2020/09/11.

import 'package:flutter/material.dart';

class CCNavigatorNextPage extends StatefulWidget {
  @override
  _CCNavigatorNextPageState createState() => _CCNavigatorNextPageState();
}

class _CCNavigatorNextPageState extends State<CCNavigatorNextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nextPage'),
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
            child: Text('第二页'),
          ),
        ),
      ),
    );
  }

  void pushNextPage() {
    Navigator.of(context).pop("hehehda");
  }
}
