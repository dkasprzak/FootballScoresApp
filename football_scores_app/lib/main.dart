import 'package:flutter/material.dart';
import 'package:football_scores_app/models/leauge.dart';
import 'package:football_scores_app/widgets/header.dart';
import 'package:football_scores_app/widgets/leauge_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Scores',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'GoalTracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Leauge> leaugeList = <Leauge>[
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9", leaugeName: "LaLiga"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Bundesliga"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
    const Leauge(
        photoUrl: "https://picsum.photos/250?image=9",
        leaugeName: "Premier Leauge"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeaderWidget(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
           scrollDirection: Axis.horizontal,
           itemCount: leaugeList.length,
           itemBuilder: (context, index){
             return InkWell(
               child: LeagueSliderWidget(leauge: leaugeList[index]),
             );
           }
           ),
        ),
      ),
    );
  }
}
