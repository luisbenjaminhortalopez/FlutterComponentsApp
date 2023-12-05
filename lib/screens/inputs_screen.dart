import 'package:flcomponents/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Benjamin',
      'last_name': 'Horta',
      'email': 'lbhortaoopez@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            //formValue key permite validar los valores de los textFormFlields (custom_input_field.dart)
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario',
                    hintText: '',
                    formProperty: 'first_name',
                    formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(
                    labelText: 'Apellido',
                    helperText: 'Apellido del usuario',
                    hintText: '',
                    formProperty: 'last_name',
                    formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(
                    labelText: 'Correo',
                    helperText: 'Correo del usuario',
                    hintText: '',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(
                    labelText: 'Contraseña',
                    helperText: 'Contraseña del usuario',
                    hintText: '',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues),
                const SizedBox(height: 30),

DropdownButtonFormField<String>(
  items: const [
    DropdownMenuItem(
      value: 'Admin', child: Text('Admin')),
       DropdownMenuItem(
      value: 'Superuser', child: Text('Superuser')),
        DropdownMenuItem(
      value: 'Developer', child: Text('Developer')),
        DropdownMenuItem(
      value: 'Jr. Developer', child: Text('Jr.Developer')),
      
  ], 
  onChanged:(value) {
formValues['role'] = value ?? 'Admin';
  }),


                ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      //la siguiente linea minimisa el teclado al precionar el boton
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    })
              ],
            ),
          ),
        )));
  }
}
