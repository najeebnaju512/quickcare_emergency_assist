import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationController with ChangeNotifier {
  Position? position;
  String latitude = "";
  String address = "";

  void fetchPosition() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        print("Location service is disabled");
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          print("Location permission is denied");
        }
      }

      if (permission == LocationPermission.deniedForever) {
        print("Location permission is denied forever");
      }

      Position currentPosition = await Geolocator.getCurrentPosition();
      position = currentPosition;
      latitude = currentPosition.latitude.toString();
      convertCord(currentPosition.latitude, currentPosition.longitude);
    } catch (e) {
      print("Error: $e");
    }
    notifyListeners();
  }

  void convertCord(double lat, double long) async {
    try {
      List<Placemark> placemark = await placemarkFromCoordinates(lat, long);
      address =
          "${placemark.last.subAdministrativeArea},${placemark.last.administrativeArea}";
    } catch (e) {
      print("Error: $e");
    }
    notifyListeners();
  }
}
