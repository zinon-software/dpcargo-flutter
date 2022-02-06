import 'package:flutter/material.dart';

import '../../utilities/themeStyles.dart';

class FlyingDetails extends StatefulWidget {
  const FlyingDetails({Key? key}) : super(key: key);

  @override
  _FlyingDetailsState createState() => _FlyingDetailsState();
}

class _FlyingDetailsState extends State<FlyingDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
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
          Container(
            width: 110,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'BAS',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Mumbai',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const Icon(Icons.flight_takeoff, color: Colors.white),
          Container(
            width: 110,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'BAS',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Mumbai',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
