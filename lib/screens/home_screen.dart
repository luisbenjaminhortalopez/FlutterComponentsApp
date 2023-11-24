import 'package:flcomponents/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final MenuOptions = AppRoutes.MenuOptions;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(MenuOptions[index].icon, color: Colors.indigo,),
          title: Text(MenuOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            // //Navigator.pushReplacement(context, route);
            // //el pushReplacement nos sirve para evitar volver atras, eliminando el stack de pantallas previas
            //   Navigator.push(context, route);

            Navigator.pushNamed(context, MenuOptions[index].route);
          },
        ), 
      separatorBuilder: (_, __)=> const Divider(), 
      itemCount: AppRoutes.MenuOptions.length
      )
    );
  }
}