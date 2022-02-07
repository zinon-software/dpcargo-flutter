import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../tickets/flight_tickets_view.dart';

class FlyingButtonSearch extends StatelessWidget {
  const FlyingButtonSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.orange,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAlias,
        elevation: 16,
        child: InkWell(
          onTap: () {
            Get.to(() => const FlightTickets());
          },
          splashColor: Colors.yellow,
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: Text(
              "SEARCH",
              style: GoogleFonts.overpass(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
