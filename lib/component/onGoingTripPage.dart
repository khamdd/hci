import 'package:flutter/material.dart';
import 'package:travel_app/component/tripCard.dart';
import 'package:travel_app/model/TripLists.dart';

class OnGoingTripPage extends StatelessWidget {
  const OnGoingTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: onGoingTripList.length,
      itemBuilder: (BuildContext context, int index) {
        return TripCard(
          destination: onGoingTripList[index].destination,
          time: onGoingTripList[index].time,
          date: onGoingTripList[index].date,
          group: onGoingTripList[index].group,
        );
      },
    );
  }
}
