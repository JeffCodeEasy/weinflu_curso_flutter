import 'package:flutter/material.dart';
import 'package:weinflu_app/pages/home_page.dart';
class HomeAppBarTItle extends StatelessWidget {
  const HomeAppBarTItle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/user.png')),
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                ),
                Expanded(
                  child: Text(
                    'Store Name', 
                    style: Theme.of(context).textTheme.headlineLarge, 
                  ),
                ),
                const ContainerHeaderIcon(configMargin: EdgeInsets.only(right: 12), iconButton: Icons.notifications,),
                const ContainerHeaderIcon(iconButton: Icons.more_vert)
              ],
            );
  }
}