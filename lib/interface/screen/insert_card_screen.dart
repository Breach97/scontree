import 'package:flutter/material.dart';
import 'package:scontree/assets.dart';
import 'package:scontree/interface/screen/home_screen.dart';
import 'package:scontree/interface/widget/gradient_text.dart';
import 'package:scontree/references.dart';

class InsertCardScreen extends StatelessWidget {
  static const String route = "/insertCardScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            GradientText("Associa la tua carta e ricevi gli Scontree quando paghi!",
                gradient: References.gradient, style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(References.generalRadius / 2)),
              child: Image(
                image: Images.card,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "---- ---- ---- ----",
                labelText: "Numero carta",
              ),
              readOnly: true,
              enabled: false,
            ),
            SizedBox(height: 16.0),
            Text(
              "Nessun dato inserito verrà salvato ma solo processato al fine di garantire il servizio, per maggiori informazioni leggere i termini e le condizioni",
              style: Theme.of(context).textTheme.caption,
            ),
            Spacer(),
            ElevatedButton(
              child: Text("Registrati"),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomeScreen.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
