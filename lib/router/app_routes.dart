import 'package:flcomponents/models/models.dart';
import 'package:flcomponents/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
// ignore: constant_identifier_names
  static const InitialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    
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
         MenuOption(
        route: 'avatar',
        icon: Icons.person,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
              MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline,
        name: 'Animated Container',
        screen: const AnimatedScreen()),
         MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Text Inputs',
        screen: const InputScreen()),
  ];


static Map<String, Widget Function(BuildContext)> getAppRoutes(){

Map<String, Widget Function(BuildContext)>  AppRoutes ={};
AppRoutes.addAll({'home': (BuildContext context) => const  HomeScreen()});

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
