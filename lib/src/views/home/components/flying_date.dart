import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlyingDate extends StatefulWidget {
  const FlyingDate({Key? key}) : super(key: key);

  @override
  _FlyingDateState createState() => _FlyingDateState();
}

class _FlyingDateState extends State<FlyingDate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width - 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(
            color: Colors.white.withOpacity(0.4),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              // color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              onPressed: () {},
              child: buildDateSelector("DEPARTURE", DateTime.now()),
            ),
            FlatButton(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              onPressed: () {},
              child: buildDateSelector(
                  "RETURN", DateTime.now().add(const Duration(days: 10))),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDateSelector(String title, DateTime dateTime) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.overpass(fontSize: 12, color: Colors.white),
          ),
          Row(
            children: <Widget>[
              Text(
                dateTime.day.toString().padLeft(2, '0'),
                style: GoogleFonts.overpass(fontSize: 40),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Jan 2022',
                    style: GoogleFonts.overpass(fontSize: 10),
                  ),
                  Text(
                    'Friday',
                    style:
                        GoogleFonts.overpass(fontSize: 10, color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
