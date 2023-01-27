import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ims/screens/home/detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: true,
            title: const Text('HomePage'),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for something',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20),
                child: const Text(
                  'This is an awesome shopping platform',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  height: 1000,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => const Detail());
                        },
                        child: const Card(
                            child: ListTile(
                                title: Text("IMS"),
                                subtitle: Text("Lower the anchor."),
                                leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
                                trailing: Icon(Icons.star))),
                      ),
                      const Card(
                          child: ListTile(
                              title: Text("JSI"),
                              subtitle: Text("This is the time."),
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
                              trailing: Icon(Icons.star))),
                      const Card(
                          child: ListTile(
                              title: Text("StS"),
                              subtitle: Text("Cast your vote."),
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
                              trailing: Icon(Icons.star)))
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
