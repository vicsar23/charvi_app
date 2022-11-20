import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:planck/constants/constants.dart';

class SheetChatIcon extends StatelessWidget {
  const SheetChatIcon({
    Key? key,
    required this.notifications,
    required this.goToChatScreen,
  }) : super(key: key);

  final int notifications;
  final Function goToChatScreen;

  @override
  Widget build(BuildContext context) {
    if (notifications <= 0) {
      return IconButton(
          icon: const Icon(
            Icons.chat_outlined,
            color: kPrimaryColor,
            size: 33,
          ),
          onPressed: () => goToChatScreen(context));
    }
    return GestureDetector(
      onTap: () => goToChatScreen(context),
      child: Badge(
        position: BadgePosition.topEnd(top: -5, end: 15),
        animationDuration: const Duration(milliseconds: 400),
        animationType: BadgeAnimationType.slide,
        badgeContent: Text(
          notifications.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        child: IconButton(
            icon: const Icon(
              Icons.chat_outlined,
              color: kPrimaryColor,
              size: 33,
            ),
            onPressed: () => goToChatScreen(context)),
      ),
    );
  }
}
