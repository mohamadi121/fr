// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../widgets/default_appbar.dart';
import '../../../widgets/simple_bot_navbar.dart';
import '../../../constants/constants.dart';

@RoutePage()
class MultiViewSliderScreen extends StatefulWidget {
  const MultiViewSliderScreen({super.key});

  @override
  State<MultiViewSliderScreen> createState() => _MultiViewSliderScreenState();
}

class _MultiViewSliderScreenState extends State<MultiViewSliderScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      bottomNavigationBar: const SimpleBotNavBar(),
      body: Column(
        children: [
          Container(
            height: Dimensions.height / 3,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                buildProductGridView(),
                buildProductGridView2(),
                buildProductGridView3(),
                buildProductGridView4(),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          buildDotList(),
        ],
      ),
    );
  }

  Widget buildProductGridView() {
    return Row(
      children: [
        // Right product cards
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 4
                      : null,
                  color: Colors.green,
                  child: const Center(child: Text('Product 2')),
                ),
              ),
              const SizedBox(
                  height: 8), // Add some spacing between the product cards
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 4
                      : null,
                  color: Colors.red,
                  child: const Center(child: Text('Product 3')),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8), // Add some spacing between the product cards
        // Left product card
        Container(
          width: MediaQuery.of(context).size.width /
              3, // Adjust the width as needed
          height: _currentPage == 0
              ? MediaQuery.of(context).size.height / 2
              : MediaQuery.of(context).size.height /
                  1.5, // Change the height as needed
          color: Colors.blue,
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  /*   top: 0,
                  left: 0,
                  right: 0,
                  //bottom: MediaQuery.of(context).size.height / 2, */
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft:
                          Radius.circular(20), // Adjust the radius as needed
                      bottomRight:
                          Radius.circular(20), // Adjust the radius as needed
                    ),
                    child: Image.network(
                      'https://picsum.photos/id/237/300/200', // Your image URL here
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  //top: MediaQuery.of(context).size.height / 2,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: Text(
                      'Product Name', // Your product name here
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildProductGridView2() {
    return Row(
      children: [
        // Left product card
        Container(
          width: MediaQuery.of(context).size.width /
              3, // Adjust the width as needed
          height:
              _currentPage == 0 ? MediaQuery.of(context).size.height / 2 : null,
          color: Colors.blue,
          child: const Center(child: Text('Product 1')),
        ),
        const SizedBox(width: 8), // Add some spacing between the product cards
        // Right product cards
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 4
                      : null,
                  color: Colors.green,
                  child: const Center(child: Text('Product 2')),
                ),
              ),
              const SizedBox(
                  height: 8), // Add some spacing between the product cards
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 4
                      : null,
                  color: Colors.red,
                  child: const Center(child: Text('Product 3')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildProductGridView3() {
    return Row(
      children: [
        // Right product cards
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 4
                      : null,
                  color: Colors.green,
                  child: const Center(child: Text('Product 2')),
                ),
              ),
              const SizedBox(
                  height: 8), // Add some spacing between the product cards
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 4
                      : null,
                  color: Colors.red,
                  child: const Center(child: Text('Product 3')),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8), // Add some spacing between the product cards
        // Left product card
        Container(
          width: MediaQuery.of(context).size.width /
              3, // Adjust the width as needed
          height:
              _currentPage == 0 ? MediaQuery.of(context).size.height / 2 : null,
          color: Colors.blue,
          child: const Center(child: Text('Product 1')),
        ),
      ],
    );
  }

  Widget buildProductGridView4() {
    return Row(
      children: [
        // Right product cards
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 4
                      : null,
                  color: Colors.green,
                  child: const Center(child: Text('Product 2')),
                ),
              ),
              const SizedBox(
                  height: 8), // Add some spacing between the product cards
              Expanded(
                child: Container(
                  height: _currentPage == 0
                      ? MediaQuery.of(context).size.height / 8
                      : null,
                  color: Colors.red,
                  child: const Center(child: Text('Product 3')),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8), // Add some spacing between the product cards
        // Left product card
        Container(
          width: MediaQuery.of(context).size.width /
              1.7, // Adjust the width as needed
          height: _currentPage == 0
              ? MediaQuery.of(context).size.height / 2
              : MediaQuery.of(context).size.height /
                  1.5, // Change the height as needed
          color: Colors.blue,
          child: const Center(child: Text('Product 1')),
        ),
      ],
    );
  }

  Widget buildDotList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(4, (index) {
        return Container(
          width: 15,
          height: 15,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }
}
