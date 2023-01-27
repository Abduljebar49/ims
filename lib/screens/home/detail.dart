import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("IMS"),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text('First Tab'),
              ),
              Tab(
                child: Text('Second Tab'),
              ),
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: const [FirstPage(), SecondPage()]));
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('First Page'),
            ElevatedButton(
                onPressed: () {}, child: const Text('Go to Nested Page 1'))
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Page'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to Nested Page 2'),
            )
          ],
        ),
      ),
    );
  }
}
