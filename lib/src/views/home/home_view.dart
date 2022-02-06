import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/themeColors.dart';
import '../utilities/themeStyles.dart';
import '../widgets/dropDown.dart';
import 'components/flightTickets.dart';
import 'components/flying_date.dart';
import 'components/flying_details.dart';
import 'components/sorting_details.dart';
import 'components/tabs.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.green,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 490.0,
            decoration: BoxDecoration(
                color: ThemeColors.green,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0))),
          ),
          Container(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10.0),
                const SortingDetails(),
                const SizedBox(height: 10.0),
                const MyTabs(),
                const SizedBox(height: 10.0),
                const FlyingDetails(),
                const SizedBox(height: 10.0),
                Container(
                  height: 100.0,
                  width: MediaQuery.of(context).size.width - 82,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: buildTravelersView(),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Cabin class:',
                                style: ThemeStyles.dropDownTextStyle),
                            const SizedBox(width: 10.0),
                            DropDown('First')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const FlyingDate(),
                const SizedBox(height: 10.0),
                Center(
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTravelersView() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "TRAVELLERS",
          style: GoogleFonts.overpass(fontSize: 14, color: Colors.white),
        ),
        const SizedBox(width: 5.0),
        Text(
          "01",
          style: GoogleFonts.overpass(fontSize: 35),
        )
      ],
    );
  }
}
