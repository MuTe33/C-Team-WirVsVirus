import 'package:flutter/material.dart';
import 'package:wirvsvirus/shared/bottomNavigationBar/cupertino_home_scaffold.dart';
import 'package:wirvsvirus/shared/bottomNavigationBar/tab_item.dart';
import 'package:wirvsvirus/views/faq_view.dart';
import 'package:wirvsvirus/views/feed_view.dart';
import 'package:wirvsvirus/views/regional_view.dart';



//keeps track of current Tab of bottomnavigationbar
class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  TabItem _currentTab = TabItem.feed;

  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.feed: GlobalKey<NavigatorState>(),
    TabItem.deinort: GlobalKey<NavigatorState>(),
    TabItem.faq: GlobalKey<NavigatorState>(),
  };

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.feed: (_) => FeedView(),
      TabItem.deinort: (_) => RegionalView(),
      TabItem.faq: (_) => FaqView(),
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
