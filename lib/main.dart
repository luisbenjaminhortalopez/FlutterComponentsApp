
import 'package:flcomponents/router/app_routes.dart';
import 'package:flcomponents/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const Listview2Screen(),
      initialRoute: AppRoutes.InitialRoute,
      routes: 
          AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute
    );
  }
}