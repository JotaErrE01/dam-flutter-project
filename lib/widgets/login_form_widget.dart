import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) => EmailValidator.validate(value!)
                ? null
                : "Por favor ingrese un correo válido",
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Usuario',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          child: TextFormField(
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Contraseña',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              debugPrint('Iniciar sesión');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.purple,
              ),
              textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // shadowColor: MaterialStateProperty.all<Color>(
              //   Colors.red,
              // ),
              // elevation: MaterialStateProperty.all<double>(80),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(
                  vertical: 15,
                ),
              ),
            ),
            child: const Text('Iniciar sesión'),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
