import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/themeColors.dart';
import '../../utilities/themeStyles.dart';
import '../../widgets/dropDown.dart';
import 'components/flying_button_search.dart';
import 'components/flying_date.dart';
import 'components/flying_details.dart';
import 'components/sorting_details.dart';
import 'components/tabs.dart';

class HomeTripsView extends StatelessWidget {
  const HomeTripsView({Key? key}) : super(key: key);

  static const routeName = '/trips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.green,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Get.back();
          },
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
            height: MediaQuery.of(context).size.height - 160,
            decoration: BoxDecoration(
                color: ThemeColors.green,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(height: 10.0),
              const Expanded(flex: 1, child: SortingDetails()),
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
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          child: buildTravelersView(),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Cabin class:',
                                style: ThemeStyles.dropDownTextStyle),
                            const SizedBox(width: 10.0),
                            DropDown('First')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const FlyingDate(),
              const Expanded(flex: 2, child: FlyingButtonSearch()),
            ],
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
