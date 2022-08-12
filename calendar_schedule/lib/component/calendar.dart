import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(1800),
        lastDay: DateTime(3000)
    );
  }
}
