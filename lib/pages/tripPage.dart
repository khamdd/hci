import 'package:flutter/material.dart';
import 'package:travel_app/component/occurTripPage.dart';
import 'package:travel_app/component/onGoingTripPage.dart';

class TripPage extends StatefulWidget {
  const TripPage({Key? key}) : super(key: key);

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("Hành Trình"),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("Diễn ra")),
                Tab(child: Text("Sắp tới")),
              ],
            ),
          ),
          body: const TabBarView(children: [
            OccurTripPage(),
            OnGoingTripPage(),
          ])),
    );
  }
}
