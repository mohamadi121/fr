import 'package:asood/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'hamberger_menu.dart';
import 'profile_menu_widget.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({required this.context, super.key});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      title:  const Center(
        child: Text(
          'آسود',
          style: TextStyle(color: Colora.scaffold),
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
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home_app_bar.png'),
                  fit: BoxFit.fill,
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


class NewAppBar extends StatelessWidget {
  const NewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height * 0.11,
      width: Dimensions.width,
      decoration: const BoxDecoration(
          color: Colora.primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)
          )
      ),
      child: Stack(
        children: [

          //image
          Container(
            height: Dimensions.height * 0.1,
            width: Dimensions.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/home_app_bar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //shade
          Container(
            height: Dimensions.height * 0.1,
            width: Dimensions.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                ),
                color: Colora.primaryColor.withOpacity(0.6)
            ),
          ),

          //user profile image
          Positioned(
            top: 15,
            right: 10,
            width: Dimensions.width * 0.1,
            child: SizedBox(
              width: Dimensions.width * 0.1,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colora.scaffold, width: 2),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/placeholder.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //menu button
          Positioned(
            top: 15,
            left: 10,
            width: Dimensions.width * 0.1,
            child: IconButton(
              onPressed: (){
                showProfileDialog(context);
              },
              icon: Icon(
                Icons.menu,
                color: Colora.scaffold,
                size: Dimensions.width * 0.07,
              ),
            ),
          ),

          //title
          Positioned(
              right: Dimensions.width * 0.25,
              left: Dimensions.width * 0.25,
              child: SizedBox(
                width: Dimensions.width * 0.5,
                height: Dimensions.height * 0.11,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'آســود',
                      style: TextStyle(
                          color: Colora.scaffold,
                          fontSize: 33,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Text(
                      'خیالی آسوده با آسود',
                      style: TextStyle(
                          color: Colora.scaffold,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ],
                ),
              )
          )

        ],
      ),
    );
  }
}
