

import 'package:flcomponents/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{

static const InitialRoute = 'home';
 static Map<String, Widget Function(BuildContext)>  routes=
         {
        'listView1': (BuildContext context) => const Listview1Screen(),
        'listView2': (BuildContext context) => const Listview2Screen(),
        'alert'    : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const cardScreen(),
        'home'     : (BuildContext context) => const HomeScreen(),


      };
      static Route<dynamic> onGenerateRoute (RouteSettings settings) {
      
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }
}