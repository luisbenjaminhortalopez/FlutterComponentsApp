import 'package:flutter/material.dart';

class CardPintor extends StatelessWidget {

  final String nombre;
  final String bibiografia;
  const CardPintor({super.key, required this.nombre, required this.bibiografia});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
        child: Row(
      children: [
        const FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Edward_Hopper%2C_New_York_artist_LCCN2016871478_%28cropped%29.jpg/1200px-Edward_Hopper%2C_New_York_artist_LCCN2016871478_%28cropped%29.jpg"),
          width: 150,
          height: 200,
          alignment: AlignmentDirectional.centerStart,
            //fit: BoxFit.fitWidth,
            fadeInDuration:  Duration(milliseconds: 300),
         
        ),
        Expanded(child:  Container(
           alignment: AlignmentDirectional.topStart,
            padding:const  EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child:  Column(
            children:[
         Text(nombre, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
         const Divider(
                    color: Colors.grey, // Color del separador
                    thickness: 1, // Grosor del separador
                  ),
         Text(bibiografia, style: const TextStyle(fontSize: 10), softWrap: true)
       ] )
          ),
        )
        ],
    ));
  }
}
