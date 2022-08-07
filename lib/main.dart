import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:great_places_app/providers/great_places.dart';
import 'package:great_places_app/screens/places_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: const PlacesListScreen(),
      ),
    );
  }
}
