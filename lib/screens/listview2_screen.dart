import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Megaman', 'Metal Gear', 'Super Smash Bros', 'final fantasy'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List View Tipo 2")
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => 
           ListTile(
                      title: Text(options[index]),
                      trailing: const Icon(Icons.arrow_forward_ios, color:  Colors.indigo ),
                      onTap: (){},
                    ), 
          separatorBuilder: (_, __) => const Divider(),
         itemCount: options.length
         )
         
         );
  }
}
