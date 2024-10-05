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
                  image: AssetImage('assets/images/home_app_bar.png'),
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

class StoreAppbar2 extends StatelessWidget {

  final String? title;
  final String? description;
  final String? image;

  const StoreAppbar2({
    super.key,
    this.title,
    this.description,
    this.image
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      width: Dimensions.width,
      height: Dimensions.height * 0.25,
      child: Container(
        width: Dimensions.width,
        height: Dimensions.height * 0.25,
        padding: EdgeInsets.only(
            bottom: Dimensions.height * 0.015
        ),
        decoration: BoxDecoration(
            color: Colora.primaryColor,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(0, 2)
              )
            ]
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)
          ),
          child: Stack(
            children: [

              // image
              SizedBox(
                width: Dimensions.width,
                height: Dimensions.height * 0.25,
                child: Image.asset(
                  'assets/images/home_app_bar.png',
                  fit: BoxFit.cover,
                ),
              ),

              //image cover
              Container(
                width: Dimensions.width,
                height: Dimensions.height * 0.25,
                color: Colora.primaryColor.withOpacity(0.6),
              ),

              //back
              Positioned(
                top: 20,
                right: 10,
                width: Dimensions.width * 0.1,
                child: SizedBox(
                  width: Dimensions.width * 0.1,
                  child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colora.scaffold,
                        size: Dimensions.width * 0.07,
                      )
                  ),
                ),
              ),

              //menu button
              Positioned(
                  top: 20,
                  left: 10,
                  width: Dimensions.width * 0.1,
                  child: InkWell(
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
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (context) => const MenuDialog(),
                      );
                    },
                  )
              ),

              Column(
                children: [

                  //image
                  Container(
                    height: Dimensions.height * 0.1,
                    margin: EdgeInsets.fromLTRB(
                      Dimensions.width * 0.39,
                      Dimensions.height * 0.02,
                      Dimensions.width * 0.39,
                      Dimensions.height * 0.01,
                    ),
                    child: Stack(
                      children: [

                        // image
                        AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colora.backgroundSwitch, width: 3),
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/logo.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),

                        // check
                        Positioned(
                          top: Dimensions.height * 0.07,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colora.primaryColor, width: 2)
                            ),
                            child: const Icon(
                              Icons.check_circle,
                              color: Colora.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //title
                  Text(
                    title!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.width * 0.05,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(
                    height: Dimensions.height * 0.005,
                  ),

                  //des
                  Text(
                    'برند اصل برای همه',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.width * 0.035,
                    ),
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

