import 'package:country_app/resources/ui_parameters.dart';
import 'package:country_app/resources/values_manager.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSize.s0,
      ),
      backgroundColor: customScaffoldColor(context),
      body: Column(
        children: [],
      ),
    );
  }
}
