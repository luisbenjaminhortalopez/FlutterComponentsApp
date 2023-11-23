import 'package:flcomponents/models/models.dart';
import 'package:flcomponents/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
// ignore: constant_identifier_names
  static const InitialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listView1',
        icon: Icons.list,
        name: 'List View 1',
        screen:  const Listview1Screen()),
    MenuOption(
        route: 'listView2',
        icon: Icons.list_alt,
        name: 'List View 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.dangerous_outlined,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_membership_rounded,
        name: 'Card',
        screen: const CardScreen()),
  ];


static Map<String, Widget Function(BuildContext)> getAppRoutes(){

Map<String, Widget Function(BuildContext)>  AppRoutes ={};
for (final option in MenuOptions){
AppRoutes.addAll({option.route: (BuildContext context) =>  option.screen});
}
  return AppRoutes;
}

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const cardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
