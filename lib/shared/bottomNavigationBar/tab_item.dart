import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum TabItem { feed, deinort, faq } // add events second place

class TabItemData {
  final String title;
  final IconData icon;

  const TabItemData({@required this.title, @required this.icon});

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.feed: TabItemData(title: "Feed", icon: IconData(0xe803, fontFamily: "Feed")),
    TabItem.deinort: TabItemData(title: "Dein Ort", icon: IconData(0xe800, fontFamily: "DeinOrt")),
    TabItem.faq: TabItemData(title: "FAQ", icon: IconData(0xe802, fontFamily: "FAQ")),
  };
}
