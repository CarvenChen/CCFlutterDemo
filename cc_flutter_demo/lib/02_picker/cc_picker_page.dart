//
// cc_picker_page.dart 文件名
// cc_flutter_demo
//
// Copyright 2020 Znlh. All rights reserved.
// Created by 陈海华 on 2020/09/29.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CCPickerPage extends StatefulWidget {
  @override
  _CCPickerPageState createState() => _CCPickerPageState();
}

class _CCPickerPageState extends State<CCPickerPage> {

  FixedExtentScrollController ctrl1 = FixedExtentScrollController();
  FixedExtentScrollController ctrl2 = FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('picker'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            this.pushNextPage();
          },
          child: Row(
            children: <Widget>[
              pickerWidget(ctrl1),
              pickerWidget(ctrl2)
            ],
          )
        ),
      ),
    );
  }

  void pushNextPage() {

  }

  Widget pickerWidget(FixedExtentScrollController ctrl) {
    return Container(
      width: 100,
      child: CupertinoPicker(
        scrollController: ctrl,
        itemExtent: 40, 
        onSelectedItemChanged: (int index){
          if (ctrl == ctrl1) {
            ctrl2.jumpTo(0);
            setState(() {
              
            });
          }
        }, 
        children: itemsList(ctrl == this.ctrl1 ? 0 : 1)
      ),
    );
  }

  List<Widget> itemsList(int componentIndex) {
    List<Widget> wgtList = [];

    int firstIndex = ctrl1.selectedItem;
    for (var i = 0; i < 5; i++) {
      wgtList.add(
        Expanded(
          child: Container(
            color: Colors.red,
            width: 80,
            alignment: Alignment.center,
            child: componentIndex == 0 ? Text("$i") : Text("$firstIndex"),
          ),
        )
      );
    }
    return wgtList;
  }

}
