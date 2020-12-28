import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapa_app/pages/acceso_gps_page.dart';

import 'package:mapa_app/pages/loading_page.dart';
import 'package:mapa_app/pages/mapa_page.dart';
import 'package:mapa_app/services/ubicacion_provider.dart';
import 'package:provider/provider.dart';

import 'pages/acceso_gps_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UbicacionProvider())],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: AccesoGpsPage(),
        routes: {
          'mapa': (_) => MapaPage(),
          'loading': (_) => LoadingPage(),
          'acceso_gps': (_) => AccesoGpsPage(),
        },
      ),
    );
  }
}
