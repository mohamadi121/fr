import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/hamberger_menu.dart';
import '../../../shared/widgets/profile_menu_widget.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreAppBar({
    super.key,
    required this.context,
    this.appbarTools,
    required this.title,
    required this.description,
    this.image,
  });
  final String title;
  final String description;
  final String? image;

  final BuildContext context;
  final Widget? appbarTools;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 210,
      title: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colora.primaryColor,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Asood Store',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(title),
                Text(
                  description,
                  style: ATextStyle.light12,
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [
        // Profile button
        Container(
          margin: const EdgeInsets.only(bottom: 100),
          child: IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {
              showProfileDialog(context);
            },
          ),
        ),
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return Container(
            margin: const EdgeInsets.only(bottom: 100),
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const MenuDialog(),
                );
              },
            ),
          );
        },
      ),
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
        child: Stack(
          //fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
                color: const Color.fromARGB(255, 0, 4, 253).withOpacity(0.5),
              ),
              margin: const EdgeInsets.only(bottom: 20),
            ),
            appbarTools ?? Container(),
          ],
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(210);
}
