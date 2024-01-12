import 'package:flutter/material.dart';
import 'package:shopping/Components/my_button.dart';
import 'package:shopping/Components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key,required this.onTap});
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _confirmPassword = new TextEditingController();
  final void Function()? onTap;
  void register() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            // Mensagem de Bemvindo
            Text(
              "Vamos criar uma conta para si!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // email login
            MyTextField(
              hintText: "Email",
              hintObsc: false,
              controller: _email,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: 'Password',
              hintObsc: true,
              controller: _password,
            ),
            SizedBox( height: 10,),
              MyTextField(
              hintText: 'Confirmar Password',
              hintObsc: true,
              controller: _confirmPassword,
            ),
            const SizedBox(height: 25),
            MyButton(
              text: "Registar",
              onTap: register,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Já tens uma conta?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap:onTap ,
                  child: Text("Iniciar agora",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
