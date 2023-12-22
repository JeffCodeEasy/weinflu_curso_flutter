import 'package:flutter/material.dart';
import 'package:weinflu_app/design/colors.dart';

class ContainerHeaderIcon extends StatelessWidget {

  final IconData iconButton;
  final EdgeInsets? configMargin;

  const ContainerHeaderIcon({super.key, required this.iconButton, this.configMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMargin,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.black12
      ),
      child: IconButton(onPressed: () => print('Hola mundo'), 
      icon: Icon(
        iconButton, 
        color: WeinFluColors.brandPrimaryColor
        ),
      ),
    );
  }
}