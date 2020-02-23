import 'package:flutter/material.dart' hide Form, Icon;
import 'package:forms/screens/form.dart';
import 'package:forms/theme.dart';
import 'package:forms/widgets/icon.dart';

class PersistantTab extends StatefulWidget {
  PersistantTab({this.child});

  final Widget child;

  @override
  _PersistantTabState createState() => _PersistantTabState();
}

class _PersistantTabState extends State<PersistantTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: TabBarView(
          children: [
            PersistantTab(
              child: Form(),
            ),
            //Charts
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: ThemeColors.darkGray,
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Container(
            height: 56,
            child: TabBar(
              indicatorColor: Colors.transparent,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.white,
              tabs: [
                Row(
                  children: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        size: 32,
                      ),
                    ),
                  ],
                ),
                //Charts
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
