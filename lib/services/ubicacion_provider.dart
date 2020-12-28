import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

class UbicacionProvider with ChangeNotifier {
  StreamSubscription<Position> _positionSubscription;

  void iniciarSeguimiento() {
    _positionSubscription = Geolocator.getPositionStream(
      desiredAccuracy: LocationAccuracy.high,
      distanceFilter: 10,
    ).listen((Position position) {
      print(position);
    });
    notifyListeners();
  }

  void cancelarSeguimiento() {
    _positionSubscription?.cancel();
    notifyListeners();
  }
}
