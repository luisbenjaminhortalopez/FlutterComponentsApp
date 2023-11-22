import 'package:flcomponents/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_time_filled_outlined),
          title: const Text('Nombre de ruta'),
          onTap: () {
            // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            // //Navigator.pushReplacement(context, route);
            // //el pushReplacement nos sirve para evitar volver atras, eliminando el stack de pantallas previas
            //   Navigator.push(context, route);

            Navigator.pushNamed(context, 'card');
          },
        ), 
      separatorBuilder: (_, __)=> const Divider(), 
      itemCount: 10
      )
    );
  }
}