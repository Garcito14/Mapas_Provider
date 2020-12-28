import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

class UbicacionModel {
  final bool siguiendo;
  final bool existeUbicacion;
  final LatLng ubicacion;

  UbicacionModel(this.siguiendo, this.existeUbicacion, this.ubicacion);
}
