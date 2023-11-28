import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../util/custom_text.dart';


class FlutterForms extends StatefulWidget {
  const FlutterForms({super.key});

  @override
  State<FlutterForms> createState() => _FlutterFormsState();
}

class _FlutterFormsState extends State<FlutterForms> {
  final _formKey = GlobalKey<FormState>();
  bool obscureValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                hintText: 'username',
                obscure: false,
                prefixIconData: Icons.person,
                validatorFuction: (value) {
                  if (value!.isEmpty) {
                    return 'Enter username';
                  }
                  return null;
                },
              ),
              const Gap(20),
              CustomTextField(
                hintText: 'password',
                obscure: obscureValue,
                prefixIconData: Icons.lock,
                suffixIconData:
                    obscureValue ? Icons.visibility : Icons.visibility_off,
                press: () {
                  setState(() {
                    obscureValue = !obscureValue;
                  });
                },
                validatorFuction: (value) {
                  if (value!.isEmpty) {
                    return 'Enter password';
                  } else if (value.length < 8) {
                    return 'Password is too short';
                  }
                  return null;
                },
              ),
              const Gap(30),
              OutlinedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  icon: const Icon(Icons.signpost_outlined),
                  label: const Text('Sign in')),
            ],
          ),
        ),
      ),
    );
  }
}
