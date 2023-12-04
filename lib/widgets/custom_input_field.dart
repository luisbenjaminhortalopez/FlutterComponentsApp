
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    super.key,  this.hintText,  this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      // initialValue: 'Benjamin Horta',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
    obscureText: obscureText,
      onChanged: ((value) {
        print("Value: $value");
      }),
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.green)),
          hintText: hintText,
          labelText: labelText,
           helperText: helperText,
          // //counterText: ''
          // //prefixIcon: Icon(Icons.verified_rounded),
          icon: icon==null ? null :  Icon(icon),
         suffixIcon: suffixIcon==null ? null: Icon(suffixIcon)
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          //         topRight: Radius.circular(10)))
          ),
    );
  }
}
