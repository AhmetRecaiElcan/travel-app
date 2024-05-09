import 'package:flutter/cupertino.dart';
import 'package:bruh/screens/car_rental/car_rental.dart';
import 'package:bruh/screens/event/event_screen.dart';
import 'package:bruh/screens/flight/flight_screen.dart';
import 'package:bruh/screens/hotel/hotel_screen.dart';
import 'package:bruh/screens/train_book/train_book.dart';

class CategoryModel {
  String name;
  String image;
  double size;
  Widget className;

  CategoryModel(this.name, this.image, this.size, this.className);
}

List<CategoryModel> categoryModelList = categoryDataList
    .map((item) => CategoryModel(
        item['name'].toString(),
        item['image'].toString(),
        item['size'] as double,
        item['class'] as Widget))
    .toList();

var categoryDataList = [
  {
    "name": "Hotel",
    "image": "assets/icon/hotel.png",
    "size": 30.0,
    "class": const HotelScreen()
  },
  {
    "name": "Flight",
    "image": "assets/icon/plane.png",
    "size": 25.0,
    "class": const FlightScreen()
  },
  {
    "name": "Car  rental",
    "image": "assets/icon/car.png",
    "size": 30.0,
    "class": const CarRentalScreen()
  },
  {
    "name": "Train",
    "image": "assets/icon/train.png",
    "size": 30.0,
    "class": const TrainBookingScreen()
  },
  {
    "name": "Event",
    "image": "assets/icon/event.png",
    "size": 30.0,
    "class": const EventScreen()
  },
];
