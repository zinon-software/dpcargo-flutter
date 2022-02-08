import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cargo/home_cargo/home_cargo_view.dart';
import '../trips/home_trips/home_trips_view.dart';
import '../utilities/themeColors.dart';

import 'package:carousel_slider/carousel_slider.dart';

class SlideShowModel {
  final String? image;
  final String? titel;

  SlideShowModel({this.image, this.titel});
}

final List<SlideShowModel> imgList = [
  SlideShowModel(
    image: 'assets/images/image1.jpg',
    titel: "Cargo",
  ),
  SlideShowModel(
    image: 'assets/images/image2.jpg',
    titel: "Delivery",
  ),
  SlideShowModel(
    image: 'assets/images/image3.jpg',
    titel: "Ticket booking",
  ),
  // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 100,
            decoration: BoxDecoration(
              color: ThemeColors.green,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(45.0),
                bottomRight: Radius.circular(45.0),
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                ComplicatedImageDemo(),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset('assets/images/logos.png'),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 29),
                    child: Center(
                      child: Text(
                        "DP  CARGO SAVE WHILE  TRAVELLING",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Get.to(() => const HomeTripsView());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_airport,
                          color: Colors.indigo.shade300,
                          size: 24,
                        ),
                        const Text(
                          'Trips',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const HomeCargoView());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.card_giftcard_outlined,
                          color: Colors.indigo.shade300,
                          size: 24,
                        ),
                        const Text(
                          'Cargo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
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
}

class ComplicatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset("${item.image}",
                        fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${(imgList.indexOf(item) + 1)} ${item.titel}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
