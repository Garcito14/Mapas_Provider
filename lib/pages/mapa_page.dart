import 'package:flutter/material.dart';
import 'package:mapa_app/services/ubicacion_provider.dart';
import 'package:provider/provider.dart';

class MapaPage extends StatefulWidget {
  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final ubi = context.read<UbicacionProvider>();
      ubi.iniciarSeguimiento();
    });
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final ubi = context.read<UbicacionProvider>();
      ubi.cancelarSeguimiento();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MapaPage'),
      ),
    );
  }
}
