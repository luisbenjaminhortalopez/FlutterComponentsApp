import 'package:flcomponents/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

final Map<String, String> formValues = {
  'first_name': 'Benjamin',
  'last_name' : 'Benjamin',
  'email'     : 'lbhortaoopez@gmail.com',
  'password'  : '123456',
  'role'      : 'Admin'
};

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body:  SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            
            child: Column(
              children: [
                const CustomInputField(labelText: 'Nombre', helperText: 'Nombre del usuario', hintText: '',),
                const SizedBox(height: 30),
                 const    CustomInputField(labelText: 'Apellido', helperText: 'Apellido del usuario', hintText: '',),
                const SizedBox(height: 30),
                 const  CustomInputField(labelText: 'Correo', helperText: 'Correo del usuario', hintText: '', keyboardType: TextInputType.emailAddress,),
                const SizedBox(height: 30),
                  const CustomInputField(labelText: 'Contrasena', helperText: 'Contrasena del usuario', hintText: '', obscureText: true,),
                const SizedBox(height: 30),
                ElevatedButton( 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child:  Text('Guardar'))
                    ), 
                    onPressed: (){})
              ],
            ),
          ),
        )));
  }
}
