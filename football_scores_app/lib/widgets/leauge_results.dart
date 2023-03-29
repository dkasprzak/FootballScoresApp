import 'package:flutter/material.dart';

class LeagueResultsWidget extends StatelessWidget {
  // const LeagueResultsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: 250,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 233, 231, 231), borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              margin: EdgeInsets.only(right: 10),
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.blue   ,
                borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),  
            ),
          Container(
            alignment: Alignment.center,
            width: 80,
            height: 40,
            child: const Text(
              "2 : 1",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),
            ),
        ],
      ),
    );
  }
}
