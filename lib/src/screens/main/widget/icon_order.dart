import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:planck/src/screens/main/tab2_controller.dart';
import 'package:provider/provider.dart';

class IconOrder extends StatelessWidget {
  const IconOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tab2Controller = Provider.of<Tab2Controller>(context);
    if (tab2Controller.numOrders <= 0) {
      return const Icon(Icons.electric_bike);
    }
    return Badge(
      position: BadgePosition.topEnd(top: -20, end: -20),
      animationDuration: const Duration(milliseconds: 400),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
        tab2Controller.numOrders.toString(),
        style: const TextStyle(color: Colors.white),
      ),
      child: const Icon(Icons.electric_bike),
    );
  }
}
