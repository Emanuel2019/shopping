import 'package:flutter/material.dart';
import 'package:shopping/Components/my_button.dart';
import 'package:shopping/Components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  @override
   TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  final void Function()? onTap;  
  void login(){

  }
  LoginPage({super.key,required this.onTap});
 
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
              "Sejam Bemvindo",
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
            const SizedBox(height: 25),
            MyButton(
              text: "Login",
              onTap: login,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Ainda sou membro?",style: TextStyle(color:Theme.of(context).colorScheme.primary),),
                GestureDetector(
                 onTap: onTap,
                  child: Text(" Registar agora",style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
