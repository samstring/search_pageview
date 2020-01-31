# search_pageview
搜索页面，可以以列表方式或是标签方式展示搜索内容


## 安装

search_pageview: ^最新版本，如当前最新是0.0.6，则使用如下
search_pageview: ^0.0.6

## 基础使用

···
List<String> hotSearchList = ["热门搜索1","热门搜索2","热门搜索3"];

SearchViewPage(
hotSearchWordList: hotSearchList,
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
···

## 其他设置

···
String _placeHolder = "搜索"; //搜索文字
String _hotSearchTitle = "热门搜索";
String _historySearchTitle = "最近搜索";
String _cancelTitle = "取消";
bool _isShowHitorySearch = true; //是否显示搜索历史
bool _isShowHistoryItemDeleteAllButton = true; //是否显示搜索历史删除按钮
bool _isShowHotSearch = true; //是否显示热门搜索
SearchContentType _hotSearchType = SearchContentType.tagType; //热门搜索显示类型
SearchContentType _hitoryType = SearchContentType.listType; //搜索历史显示类型
bool _isShowHistoryToTop = true; //历史搜索是否放在最上面
int _hitoryRecordCount = 20; //历史记录最大数目
HotSearchViewBuilder _hotSearchBuilder; //自定义热门搜索内容视图
SearchHitoryViewBuilder
    _searchHitoryBuilder; //自定义历史搜索内容视图,如果自定义的话需要自己实现读取历史记录方法
List<String> _hotSearchWordList = List(); //热门搜索列表
ClickItemBlock _clickItemBlock; //点击搜索标签时候的回调
ClickSearchBlock _clickSearchBlock; //点击搜索时候回调
ClickCancelBlock _clickCancelBlock; //如果不设置的话默认弹回上一个界面

···
