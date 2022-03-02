import 'package:flutter/material.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({Key? key}) : super(key: key);
  final int selectedIndex = 1;
  @override
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(controller: _tabController);
  }
}
