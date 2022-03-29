import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCard extends StatefulWidget {
  String date;

  DateCard({required this.date});

  @override
  State<DateCard> createState() => _DateCardState();
}

class _DateCardState extends State<DateCard> {
  DateTime now = new DateTime.now();

  late String selected;

  @override
  void initState() {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    selected=formatted;
    print("formatted${formatted}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(selected);
    
    return InkWell(
      onTap: (){
        setState(() {
          selected=widget.date;
        });
      },
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            color: selected==widget.date?Colors.amber[50]:Colors.lightBlue.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(widget.date)],
          ),
        ),
      ),
    );
  }
}
