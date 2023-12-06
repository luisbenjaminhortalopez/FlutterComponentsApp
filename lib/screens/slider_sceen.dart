import 'package:flcomponents/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            //.adaptative cambia algunos widgets para que se adapten a las diferentes plataformas
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                //divisions nos sirve para hacer puntos de referencia en el slider
                divisions: 10,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),

            SwitchListTile.adaptive(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: ((value) => setState(() {
                    _sliderEnabled = value;
                  })),
            ),

            //expaded hace que el widget envuelto tome todo el espacio disponible
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://cdn130.picsart.com/363820777002211.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
               
              ),
            ),

           
          ],
        ));
  }
}

//EL SIGUIENTE CODIGO COMENTADO MUESTRA OTROS WIDGETS QUE NOS PUEDEN SERVIR PARA DESHABILITAR EL SLIDER

// Es mejor usar CheckboxListTile, por lo tanto, el Checkbox y el Switch están comentados

// Checkbox no utilizado
// Checkbox(
//   value: true,
//   onChanged: (value) {
//     _sliderEnabled = value ?? true;
//     setState(() {});
// }),

// Switch no utilizado
// Switch(
//   value: _sliderEnabled,
//   onChanged: (value) => setState(() {
//     _sliderEnabled = value;
// })),

// CheckboxListTile no utilizado
// CheckboxListTile(
//   title: const Text('Habilitar Slider'),
//   activeColor: AppTheme.primary,
//   value: _sliderEnabled,
//   onChanged: (value) => setState(() {
//     _sliderEnabled = value ?? true;
//   }),
// ),
// AboutListTile() 
//nos muestra las licencias de nuestra app