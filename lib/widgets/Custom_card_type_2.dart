import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String descripcion;
  const CustomCardType2({super.key, required this.imageUrl, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (descripcion != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding:const  EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child:  Text(descripcion!)
          ),
        ],
      ),
    );
  }
}
