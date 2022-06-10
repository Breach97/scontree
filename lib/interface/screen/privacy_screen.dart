import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:scontree/assets.dart';
import 'package:scontree/references.dart';

class PrivacyScreen extends StatelessWidget {
  static const String route = "/privacyScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Text("Informativa sulla Privacy"),
        gradient: References.gradient,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(32.0),
      children: [
        FractionallySizedBox(widthFactor: 3 / 4, child: Image(image: Images.logo)),
        SizedBox(height: 16.0),
        Text("""Ai sensi degli art. 13 e 14 del regolamento UE 679/2016 informativa sulla privacy.
\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur volutpat facilisi rhoncus bibendum pharetra, rhoncus. Nunc ullamcorper mattis est, id dolor. Sit nibh quisque blandit enim ut et ultrices risus, et. Eu nulla integer sagittis, vitae vitae nibh.
\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur volutpat facilisi rhoncus bibendum pharetra, rhoncus.Eu nulla integer sagittis, vitae vitae nibh.
\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur volutpat facilisi rhoncus bibendum pharetra, rhoncus. Nunc ullamcorper mattis est, id dolor. Sit nibh quisque blandit enim ut et ultrices risus, et.
          """),
        ElevatedButton(
          child: Text("Ho letto e accetto"),
          onPressed: () {},
        ),
      ],
    );
  }
}
