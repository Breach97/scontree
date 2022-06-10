import 'package:flutter/material.dart';
import 'package:scontree/assets.dart';
import 'package:scontree/interface/widget/gradient_text.dart';
import 'package:scontree/references.dart';

class LoginScreen extends StatelessWidget {
  static const String route = "/loginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FractionallySizedBox(widthFactor: 3 / 4, child: Image(image: Images.logo)),
            Flexible(child: SizedBox(height: 16.0)),
            GradientText(References.appMotto, gradient: References.gradient, style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
            Spacer(),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "E-mail",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Recupero credenziali", style: TextStyle(decoration: TextDecoration.underline)),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      Text("Ricorda credenziali"),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              child: Text("Accedi"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
