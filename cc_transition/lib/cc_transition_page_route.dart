//
// cc_transition_page_route.dart ⽂文件名
// customrouteanimation
//
// Copyright 2020 CC. All rights reserved.
// Created by 陈海华 on 2020/08/28.


import 'package:flutter/material.dart';

class CCPageRoute extends PageRouteBuilder {
  Widget widget;
  CCPageRoute(this.widget):super(
    transitionDuration: Duration(seconds: 2),
    pageBuilder:(BuildContext context, Animation animation1, Animation animation2) {
      return widget;
    },
    transitionsBuilder: (        
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child) {
        return ScaleTransition(
          scale: null,
          child: child,
        );
    }
  );
}