import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    //Hace q solo se cargue la 1ra vez con el hot reload
//    SI se vulev hace hot reload porque instanci la 1ra vez
//  El hot Reload no hace una nueva instancia
//    si se hace hot restart si funciona

    cargarData();
  }

  void cargarData() {
    rootBundle.loadString('data/menu.json').then((data) {
      Map dataMap = json.decode(data);
      print(dataMap);
    });
  }
}

final menuProvider = new _MenuProvider();
