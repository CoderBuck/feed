import 'dart:convert';

import 'package:dartkt/dartkt.dart';
import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:feed/generated/json/base/json_convert_content.dart';
import 'package:feed/page/zhihu/bean/zhihu_entity.dart';
import 'package:feed/page/zhihu/bean/zhihu_hot_item_bean.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class ZhiHuPage extends StatefulWidget {
  @override
  _ZhiHuPageState createState() => _ZhiHuPageState();
}

class _ZhiHuPageState extends State<ZhiHuPage> {
  var items = mutableListOf<ZhiHuHotItemBean>();

  @override
  void initState() {
    super.initState();
    reqData();
  }

  Future<void> reqData() async {
    var dio = Dio();
    dio.options.headers['user-agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)';
    var response = await dio.get<String>('https://www.zhihu.com/billboard');

    var html = response.data;
    var jsonStr = html.substringAfter('"hotList":').substringBefore('"}],') + '"}]';
    var json = jsonDecode(jsonStr);
    var beans = JsonConvert.fromJsonAsT<List<ZhihuEntity>>(json);

    beans.forEachIndexed((idx, it) {
      var target = it.target;
      var zhiHuHotItemBean = ZhiHuHotItemBean(
        index: idx.toString(),
        title: target.titleArea.text,
        excerpt: target.excerptArea.text,
        img: target.imageArea.url,
        link: target.link.url,
        metrics: target.metricsArea.text,
      );
      items.add(zhiHuHotItemBean);
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(height: 0.1, color: Colors.grey.shade600);
        },
        itemCount: items.size,
        itemBuilder: (context, index) {
          var item = items[index];
          return Container(
            padding: EdgeInsets.all(8).copyWith(left: 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis),
                      SizedBox(height: 8),
                      Text(
                        item.metrics,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                if(item.img?.isNotEmpty ?? false) ExtendedImage.network(
                  item.img,
                  height: 75,
                  width: 100,
                  fit: BoxFit.cover,
                  borderRadius: BorderRadius.circular(6),
                  shape: BoxShape.rectangle,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
