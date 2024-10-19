// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/order_card_widget.dart';
import '../../../shared/widgets/store_card.dart';

@RoutePage()
class VendorDashboardScreen extends StatefulWidget {
  const VendorDashboardScreen({super.key});

  @override
  State<VendorDashboardScreen> createState() => _VendorDashboardScreenState();
}

class _VendorDashboardScreenState extends State<VendorDashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _activeTabIndex; // To keep track of the active tab
  bool isStoreMenuVisible = false;
  bool isOrderMenuVisible = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_onTabChanged);
    _activeTabIndex = _tabController.index; // Set initial active tab index
  }

  void _onTabChanged() {
    setState(() {
      _activeTabIndex = _tabController.index; // Update the active tab index
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: Container(
        width: Dimensions.width,
        margin: const EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: null,
                  indicatorColor: Colors.transparent, // Remove indicator color
                  tabs: [
                    buildTab('لیست فروشگاه‌ها', 0),
                    buildTab('درخواست جدید', 1),
                    buildTab('آمار و خرید', 2),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // Content of Tab 1
                    buildTabStoreList(),

                    // Content of Tab 2
                    buildTabOrderList(),

                    // Content of Tab 3
                    buildTabStatList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTab(String label, int tabIndex) {
    bool isActive = _activeTabIndex == tabIndex; // Check if tab is active

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      // margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: isActive
            ? Colors.white
            : Colors.purple, // White when active, purple otherwise
        borderRadius: BorderRadius.circular(50), // Border radius for each tab
        border: isActive
            ? Border.all(color: Colors.purple) // Purple border when active
            : null, // No border otherwise
      ),
      child: Align(
        alignment: Alignment.center,
        child: FittedBox(
          child: Text(label,
              style: TextStyle(color: isActive ? Colors.black : Colors.white)),
        ),
      ),
    );
  }

  Widget buildTabStoreList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(); /* StoreCard(
          index: index,
          menuVisibility: true,
        ); */
      },
    );
  }

  Widget buildTabOrderList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colora.primaryColor,
          ),
          child: const Text(
            "لیست فروشگاه‌های احمدی",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return OrderCard(index: index);
            },
          ),
        ),
      ],
    );
  }

  Widget buildTabStatList() {
    return ListView(
      children: List.generate(
        10,
        (index) => ListTile(
          title: Text('آمار و خرید Item $index'),
        ),
      ),
    );
  }
}
