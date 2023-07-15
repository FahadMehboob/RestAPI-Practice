import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("ICC BATSMAN RANKINGS"),
        centerTitle: true,
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          indicatorWeight: 5.0,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic),
          controller: _tabController,
          tabs: const [
            Tab(text: "TEST"),
            Tab(text: "ODI"),
            Tab(text: "T20"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text("TEST View")),
          Center(child: Text("ODI View")),
          Center(child: Text("T20 View")),
        ],
      ),
    );
  }
}
