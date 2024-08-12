import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:train/widgets/custom_elevated_button.dart';
import 'package:train/widgets/custom_text.dart';
import 'package:train/widgets/custom_text_form_field.dart';
import 'package:train/widgets/custom_validator.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  var number1Controller = TextEditingController();
  var number2Controller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  int? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // nubmer 1
              CustomTextFormField(
                controller: number1Controller,
                hintText: 'Enter Number',
                label: 'Enter Number',
                validator: (value) {
                return  CustomValidator.validateNumber(value);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              // number 2
              CustomTextFormField(
                controller: number2Controller,
                hintText: 'Enter Number',
                label: 'Enter Number',
                validator: CustomValidator.validateNumber
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'result : ${result ?? ''}',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    int number1 = int.parse(number1Controller.text);
                    int number2 = int.parse(number2Controller.text);
                    result = number1 + number2;
                    setState(() {});
                  }
                },
                text: 'Calculate',
              )
            ],
          ),
        ),
      )),
    );
  }
}
