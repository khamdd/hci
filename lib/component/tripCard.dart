import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final String destination, time, date, group;

  const TripCard(
      {Key? key,
      required this.destination,
      required this.time,
      required this.date,
      required this.group})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Column(
        children: [
          Text(destination),
          Text(time + date),
          Text(group),
        ],
      ),
    );
  }
}
