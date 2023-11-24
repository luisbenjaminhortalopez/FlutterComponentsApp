import 'package:flcomponents/widgets/Card_pintor.dart';
import 'package:flcomponents/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: const [
            //CustomCardType1(),
            CardPintor(nombre: 'Edward Hopper', bibiografia: 'Pintor estadounidense, célebre por sus retratos de la soledad en la vida estadounidense contemporánea, llevó el expresionismo abstracto posterior a la Segunda Guerra Mundial. ',),
            SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://www.culturajoven.es/wp-content/uploads/2021/02/498841.jpg', descripcion: 'Gasolina',),
             SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://cdn.britannica.com/42/19342-050-1034FC73/Nighthawks-oil-canvas-Edward-Hopper-Art-Institute-1942.jpg', descripcion: 'Nighthawks',),
             SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://sheldonartmuseum.org/Hopper_W_L.jpg', descripcion: 'Habitación en Nueva York',),
             SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://historia-arte.com/_/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpbSI6WyJcL2FydHdvcmtcL2ltYWdlRmlsZVwvaG9wcGVyX21hbmFuYS5qcGciLCJyZXNpemUsMjAwMCwyMDAwIl19.k0yC8JSmn2zz7v2Q3VEK5zTnPRldhdCDplj7BTNy0Wk.jpg', descripcion: 'Sol de la mañana',),
             SizedBox(height: 100),
          ],
        ));
  }
}
