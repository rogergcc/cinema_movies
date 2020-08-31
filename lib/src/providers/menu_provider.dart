import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    //Hace q solo se cargue la 1ra vez con el hot reload
//    SI se vulev hace hot reload porque instanci la 1ra vez
//  El hot Reload no hace una nueva instancia
//    si se hace hot restart si funciona

    // cargarData();
  }

   Future<List<dynamic>> cargarData() async{
    final resp = await rootBundle.loadString('data/movies.json');
    Map dataMap = json.decode(resp);
    print(dataMap['items']);
    options = dataMap['items'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
