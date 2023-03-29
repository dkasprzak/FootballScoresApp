import 'package:flutter/material.dart';
import 'package:football_scores_app/models/leauge.dart';
import 'package:football_scores_app/widgets/date_selector.dart';
import 'package:football_scores_app/widgets/header.dart';
import 'package:football_scores_app/widgets/leauge_results.dart';
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
        // brightness: Brightness.dark,

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
  List<League> leagueList = <League>[
    const League(
        photoUrl:
            "https://upload.wikimedia.org/wikipedia/el/f/f6/Ekstraklasa_%28logo%29.png",
        leagueName: "Ekstraklasa"),
    const League(
        photoUrl:
            "http://uksmilowka.pl/wp-content/uploads/2018/01/Premier_League_Logo.svg_.png",
        leagueName: "Premier League"),
    const League(
        photoUrl:
            "https://assets.laliga.com/assets/logos/laliga-v/laliga-v-300x300.png",
        leagueName: "LaLiga"),
    const League(
        photoUrl: "https://www.fifplay.com/img/public/serie-a-logo.png",
        leagueName: "Serie A"),
    const League(
        photoUrl: "https://www.fifplay.com/img/public/bundesliga-logo.png",
        leagueName: "Bundesliga"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeaderWidget(),
      ),
      body: Container(
        color: const Color.fromARGB(255, 247, 245, 246),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: leagueList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: LeagueSliderWidget(league: leagueList[index]),
                      onTap: () {
                        print("elo");
                      },
                    );
                  }),
            ),
            Row(
              children: [
                Expanded(child: DateSelectorWidget()),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                  LeagueResultsWidget(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
