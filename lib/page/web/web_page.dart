import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: true,

        userAgent: 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.9 Safari/537.36',
        supportZoom: true,
        javaScriptEnabled: true,
      ),

      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
        useWideViewPort: false,
        loadWithOverviewMode: true,
        builtInZoomControls: true,
        // displayZoomControls: true,
        defaultFixedFontSize:20,
        defaultFontSize: 20,
        initialScale: 140,

      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  @override
  Widget build(BuildContext context) {
    var url = Get.arguments;
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(url)),
        initialOptions: options,

        shouldOverrideUrlLoading: (controller, navigationAction) async {
          var uri = navigationAction.request.url;

          // if (![ "http", "https", "file", "chrome",
          //   "data", "javascript", "about"].contains(uri.scheme)) {
          //   return NavigationActionPolicy.CANCEL;
          // }

          return NavigationActionPolicy.CANCEL;
        },

      ),
    );
  }
}
