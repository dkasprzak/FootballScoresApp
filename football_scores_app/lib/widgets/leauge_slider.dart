import 'package:flutter/material.dart';
import 'package:football_scores_app/models/leauge.dart';

class LeagueSliderWidget extends StatelessWidget {
  final League league;

  const LeagueSliderWidget({super.key, required this.league});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      padding: const EdgeInsets.all(10.0),
      margin:
          const EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                league.photoUrl,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 10),
              Text(
                league.leagueName,
                style: const TextStyle(
                    color: Color.fromARGB(255, 178, 178, 178), fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
