import 'package:flutter/material.dart';
import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';

class DateSelectorWidget extends StatelessWidget {
  // const DateSelectorWidget({super.key});

  var selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(top: 10),
      child: AnimatedHorizontalCalendar(
          
          date: DateTime.now(),
          tableCalenderThemeData: ThemeData.light().copyWith(
            primaryColor: Colors.teal,
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: const ColorScheme.light(
              primary: Colors.teal,
            ),
          ),
          fontSizeOfMonth: 15,
          fontSizeOfWeek: 10,
          unSelectedBoxShadow: const BoxShadow(
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 10,
            color: Color.fromRGBO(15, 86, 78, 1),
          ),
          selectedColor: const Color.fromARGB(255, 0, 150, 136),
          tableCalenderButtonColor: Color.fromARGB(255, 8, 182, 164),
          tableCalenderIcon: (const Icon(
            Icons.calendar_today,
            color: Colors.white,
          )),
          onDateSelected: (date) {
            selectedDate = date;
          }),
    );
  }
}
