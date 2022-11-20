import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:planck/src/widgets/icon_status_order.dart';

class CardNotificationsIcon extends StatelessWidget {
  const CardNotificationsIcon({
    Key? key,
    required this.notifications,
    required this.status,
  }) : super(key: key);

  final int notifications;
  final int status;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: notifications <= 0
          ? IconStatusOrder(status)
          : Badge(
              position: BadgePosition.topEnd(top: -15, end: -5),
              animationDuration: const Duration(milliseconds: 400),
              animationType: BadgeAnimationType.slide,
              badgeContent: Text(
                notifications.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              child: IconStatusOrder(status),
            ),
    );
  }
}
