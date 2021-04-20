import 'package:flutter/material.dart';

class Ext {}

extension WidgetExt on Widget {
  KeepAlive automaticKeepAlive({Key key}) {
    return KeepAlive(key: key, child: this, keepAlive: true);
  }
}
