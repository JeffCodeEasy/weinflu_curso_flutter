import 'package:flutter/material.dart';
import 'package:weinflu_app/design/colors.dart';
import 'package:weinflu_app/design/radius.dart';
import 'package:weinflu_app/widgets/home_app_bar_title.dart';

class WeinFluApp extends StatelessWidget {
  const WeinFluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: WeinfluRadius.small, 
              bottomRight: WeinfluRadius.small
              )
              ),
          toolbarHeight: 97,
          backgroundColor: WeinfluColors.brandLightColor,
          title:  const Padding(
            padding: EdgeInsets.fromLTRB(16, 45, 16, 12),
            child: HomeAppBarTItle()
          ),
        ),
        body: const Center(child: Text('Hola Weincoders 🚀 !!!', style: TextStyle(fontSize: 34),)),
    );
  }
}

