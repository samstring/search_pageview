import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_pageview/search_page.dart';



class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<String> hotSearchList = ["热门搜索1","热门搜索2","热门搜索3"];
    return Scaffold(
      
      body: SafeArea(
        child: SearchViewPage(
          hotSearchWordList: hotSearchList,
          hotSearchType: SearchContentType.tagType,//热门搜索以标签，立标或是自定义方式去显示
          hitoryType: SearchContentType.listType,//历史搜索以标签，立标或是自定义方式去显示
          isShowHistoryItemDeleteAllButton: true,//是否显示删除全部历史按钮，默认是true
          isShowHistoryToTop: true,//交换热门与搜索位置
          // hotSearchType: SearchContentType.customerType,
          // hotSearchBuilder: (//自定义热门搜索视图
          //     List hotSearchWordList){ 
          //       return Container(height: 300,color: Colors.red,);
          //       }

          clickCancelBlock: (BuildContext context1){
            print("点击取消");
            Navigator.pop(context1);
          },

          clickSearchBlock: (BuildContext context1,String text){
            print("点击搜索");
            print(text);
            // Navigator.pop(context);
          },
          clickItemBlock:  (BuildContext context1,List itemList,int index,bool isHistory){
            // print(itemList[index]+"3434");
            print(itemList[index]);
            // Navigator.pop(context);
          },
          )
      )
      );
  }
  
}