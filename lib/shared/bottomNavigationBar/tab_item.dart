import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TabItem { clubs, map, account } // add events second place

class TabItemData {
  final String title;
  final IconData icon;

  const TabItemData({@required this.title, @required this.icon});

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.clubs: TabItemData(title: "Home", icon: Icons.home),
   // TabItem.events: TabItemData(title: "Events", icon: Icons.event_note),
    TabItem.map: TabItemData(title: "Map", icon: Icons.map),
    TabItem.account: TabItemData(title: "User", icon: Icons.person),
  };
}
