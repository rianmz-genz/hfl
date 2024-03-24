import 'package:flutter/material.dart';
import 'package:todoapplocal/components/button.dart';
import 'package:todoapplocal/components/input.dart';
import 'package:todoapplocal/components/text.dart';
import '../../theme/index.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // Tambahkan GlobalKey<FormState>
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void onSubmit() {
    // Memanggil validate() pada _formKey untuk memicu validasi
    if (_formKey.currentState!.validate()) {
      // Proses login disini
      print(emailController.text);
      print(passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          child: Form(
            // Tambahkan Form widget dan assign _formKey
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/logo.png',
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: "Homework For Life",
                  weight: FontWeight.bold,
                  size: FontSize.bigTitle1,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                MyText(
                  text:
                      "Record your daily diary in Homework for Life because the brain is not for storing information.",
                  weight: FontWeight.normal,
                  size: FontSize.title,
                  color: Colors.black,
                ),
                SizedBox(height: 20),
                Input(
                  controller: emailController,
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty'; // Pesan validasi yang benar
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Input(
                  controller: passwordController,
                  labelText: 'Password',
                  hintText: '***',
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty'; // Pesan validasi yang benar
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Button(
                  value: 'Login',
                  onPressed: onSubmit, // Panggil onSubmit() saat tombol ditekan
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                        text: "Don't have account?",
                        weight: FontWeight.normal,
                        color: Colors.black,
                        size: FontSize.subtitle)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
