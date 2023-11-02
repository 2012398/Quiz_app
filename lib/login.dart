import 'package:flutter/material.dart';
import 'package:nabeel_test/quiz_screen.dart';
import 'package:nabeel_test/quiz_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Quiz App",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: FormFields(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FormFields extends StatefulWidget {
  const FormFields({super.key});
  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  String _errorMessage = "";
  final _formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(

            controller: nameController,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              enabledBorder: OutlineInputBorder(

                borderSide: BorderSide(color: Colors.white)
              )
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your name";
              }
              return null;
            },
          ),

          const SizedBox(
            height: 15,
          ),
          ElevatedButton(

              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(),
                    ),
                  );
                } else {}
              },
              child: const Text("Sign In"))
        ],
      ),
    );
  }


}
