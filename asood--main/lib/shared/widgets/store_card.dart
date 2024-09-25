// ignore_for_file: unused_import, sized_box_for_whitespace

import 'package:asood/shared/utils/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../models/market_model.dart';
import '../../modules/market/screens/store.dart';
import '../../modules/market/screens/edit_store_screen.dart';
import '../../modules/vendor/blocs/workspace/workspace_bloc.dart';
import '../constants/constants.dart';
import 'custom_button.dart';

class StoreCard extends StatefulWidget {
  const StoreCard({
    super.key,
    required this.market,
    required this.index,
    this.menuVisibility = true,
    required this.bloc,
  });
  final MarketModel market;
  final int index;
  final bool menuVisibility;
  final WorkspaceBloc bloc;

  @override
  State<StoreCard> createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  bool isMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        IgnorePointer(
          ignoring: !widget.menuVisibility,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMenuVisible = !isMenuVisible;
              });
//
              widget.bloc.add(SelectMarket(marketId: widget.index));
            },
            child: Container(
              height: 110,
              width: Dimensions.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colora.primaryColor, // Change this to your primary color
              ),
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.market.name.toString(),
                        style: ATextStyle.light12.copyWith(color: Colors.white),
                      ),
                      Container(
                        width: Dimensions.width * 0.6,
                        child: const Divider(
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.market.isPaid.toString(),
                              overflow: TextOverflow.fade,
                              style: ATextStyle.light12
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "وضعیت فروشگاه: ${widget.market.status}",
                              style: ATextStyle.light12
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: Dimensions.width * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "تاریخ: ${widget.market.createdAt}",
                              style: ATextStyle.light12
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "شناسه: ${widget.market.businessId}",
                              style: ATextStyle.light12
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isMenuVisible)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                        width: 110,
                        onPress: () {
                          context.router
                              .push(StoreRoute(market: widget.market));

                          /*   Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StoreScreen(
                                market: widget.market,
                              ),
                            ),
                          ); */
                        },
                        text: "پیش نمایش"),
                    CustomButton(
                        width: 110,
                        onPress: () {
                          context.router
                              .push(EditStoreRoute(market: widget.market));
                          /*   Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  EditStoreScreen(market: widget.market),
                            ),
                          ); */
                        },
                        text: "ویرایش"),
                    CustomButton(
                        width: 110, onPress: () {}, text: "اشتراک گذاری"),
                    // Add more menu items as needed
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(width: 110, onPress: () {}, text: "انتشار"),
                    CustomButton(
                        width: 110, onPress: () {}, text: "پرداخت اشتراک"),
                    CustomButton(width: 110, onPress: () {}, text: "غیرفعال"),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
