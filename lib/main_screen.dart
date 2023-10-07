import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_screen.dart';
import 'package:flutter_application_1/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  final String title;
  const MainScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.travel_explore),
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return TourismList(place: place);
        }
      ),
    );
  }
}

class TourismList extends StatelessWidget {
  final TourismPlace place;

  const TourismList({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(place: place);
          }));
        },
        child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(place.imageAsset)
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      place.name,
                      style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5),
                    Text(place.location),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}