import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wirvsvirus/shared/bottomNavigationBar/tab_item.dart';

//knows how to show bottomnavigationbar on screen
// If you want to change bottomnavigation UI in future just swope out this page
// No need to change HomePage

class CupertinoHomeScaffold extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, WidgetBuilder> widgetBuilders;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  const CupertinoHomeScaffold({
    Key key,
    @required this.currentTab,
    @required this.onSelectTab,
    @required this.widgetBuilders,
    @required this.navigatorKeys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Color(0xFF014B76),
        items: [
          _buildItem(TabItem.feed),
          _buildItem(TabItem.deinort),
          _buildItem(TabItem.faq),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (BuildContext context, int index) {
        final item = TabItem.values[index];
        return CupertinoTabView(
          navigatorKey: navigatorKeys[item],
          builder: (context) => widgetBuilders[item](context),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];
    final color = currentTab == tabItem ? Color(0xFF99DDC5): Colors.grey[300]; 
    return BottomNavigationBarItem(
      icon: Icon(
        itemData.icon,
        color: color,
        size: 24,
      ),
      title: Text(
        itemData.title,
        style: TextStyle(color: color , fontSize: 12),
      ),
    );
  }
}
