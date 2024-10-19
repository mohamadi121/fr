import 'package:flutter/material.dart';
import 'hamberger_menu.dart';
import 'profile_menu_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: const Center(
        child: Text(
          'آسود',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [
        // Profile button
        IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            showProfileDialog(context);
          },
        ),
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const MenuDialog(),
              );
            },
          );
        },
      ),
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(40), // Adjust the value as needed
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 4, 253)
                  .withOpacity(0.5), // Adjust opacity as needed
            ),
          ],
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16), // Adjust the value as needed
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
