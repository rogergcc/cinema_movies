import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:movies_flutter/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Cinema Movies'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _swiperTarjetas(),
              _lista(context),
            ],
          )),
    );
  }

  Widget _swiperTarjetas() {
    return Container(
      color: Color(0xFFFFFDE7),
      padding: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: 300.0,
      child: new Swiper(
        layout: SwiperLayout.STACK,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/350x150",
            fit: BoxFit.cover,
          );
        },
        itemCount: 3,
        itemWidth: 200.0,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }

//  _swiperTarjetasMovies() {
//    //endpoint https://api.themoviedb.org/3/list/15570?api_key=516adf1e1567058f8ecbf30bf2eb9378&language=en-US
////    https://image.tmdb.org/t/p/original/vfzE3pjE5G7G7kcZWrA3fnbZo7V.jpg
//  }

  Widget _lista(BuildContext context) {
    print(menuProvider.options);
    return Container(
        color: Color(0xFFFFA000),
//      padding: EdgeInsets.only(top: 4.0),
        width: double.infinity,
        height: 250,
        child: ListView(
          children: _listaItems(),
        )
    );

//    return Container(
//      width: double.infinity,
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[ListView(children: _listaItems())],
//      ),
//    );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(title: Text("Hola Mundow 1")),
      Divider(),
      ListTile(title: Text("Hola Mundow 1")),
      Divider(),
      ListTile(title: Text("Hola Mundow 1")),
      Divider(),
    ];
  }
}
