import 'package:flutter/material.dart';
import 'package:wirvsvirus/bottomNavigationBar/cupertino_home_scaffold.dart';
import 'package:wirvsvirus/bottomNavigationBar/tab_item.dart';
import 'package:wirvsvirus/main.dart';



//keeps track of current Tab of bottomnavigationbar
class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  TabItem _currentTab = TabItem.clubs;

  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.clubs: GlobalKey<NavigatorState>(),
   // TabItem.events: GlobalKey<NavigatorState>(),
    TabItem.map: GlobalKey<NavigatorState>(),
    TabItem.account: GlobalKey<NavigatorState>(),
  };

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.clubs: (_) => MyHomePage(),
     // TabItem.events: (_) => EventPage(),
      TabItem.map: (_) => MyHomePage(),
      TabItem.account: (_) => MyHomePage(),
    };
  }

  void _select(TabItem tabItem) {
    if (tabItem == _currentTab) {
      //pop to first route back
      navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await navigatorKeys[_currentTab]
          .currentState
          .maybePop(), // to control Android navigation button (back); this will only pop if there is more than one route on the navigator (return true) --> bool expression; no effect on iOS
      child: CupertinoHomeScaffold(
        currentTab: _currentTab,
        onSelectTab: _select,
        widgetBuilders: widgetBuilders,
        navigatorKeys: navigatorKeys,
      ),
    );
  }
}
