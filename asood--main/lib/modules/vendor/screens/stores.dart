// ignore_for_file: unnecessary_const

import 'package:asood/shared/constants/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../shared/utils/snack_bar_util.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/order_card_widget.dart';
import '../../../shared/widgets/store_card.dart';
import '../blocs/workspace/workspace_bloc.dart';

@RoutePage()
class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> with SingleTickerProviderStateMixin {

  late WorkspaceBloc bloc;

  bool switchValue = false;
  late TabController _tabController;
  int activeTabIndex = 0;
  bool isMenuVisible = false;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<WorkspaceBloc>(context);
    // Dispatch the event when the screen is opened
    bloc.add(LoadStores());
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  void _onTabChanged() async{
    setState(() {
      activeTabIndex = _tabController.index;
    });

    // bloc.add(ChangeTabView(activeTabIndex: activeTabIndex));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: DefaultAppBar(context: context, title: 'لیست فروشگاه های من',),
      body: BlocConsumer<WorkspaceBloc, WorkspaceState>(
      listener: (context, state) {
          // _tabController.index = state.activeTabIndex;
          // _tabController.index > state.activeTabIndex
          //   ? _tabController.index = state.activeTabIndex
          //   : null;
          // if (state.status == WorkspaceStatus.success) {
          //   _tabController.index = state.activeTabIndex;
          // }
          if (state.status == WorkspaceStatus.failure) {
            showSnackBar(context, "مشکلی در بارگذاری پیش آمده , مجدد تلاش کنید!");
          }
      },
      builder: (context, state) {
        return Container(
            color: Colora.primaryColor,
            child: SafeArea(
              child: Scaffold(
                body: Stack(
                  children: [

                    SizedBox(
                      height: Dimensions.height,
                      width: Dimensions.width,
                      child: state.status == WorkspaceStatus.loading
                        ? Column(
                          children: [

                            SizedBox(
                              height: Dimensions.height * 0.11,
                            ),
                            
                            ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Container(
                                height: Dimensions.height * 0.14,
                                width: Dimensions.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colora.lightBlue.withOpacity(0.3),
                                ),
                                margin: const EdgeInsets.all(8.0),
                                child: Shimmer.fromColors(
                                  baseColor: Colors.grey.withOpacity(0.2),
                                  highlightColor: Colors.black.withOpacity(0.2),
                                  direction: ShimmerDirection.rtl,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                        :state.status == WorkspaceStatus.failure
                          ?Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text(
                                'مشکلی در بارگذاری پیش آمده , مجدد تلاش کنید!',
                                style: TextStyle(
                                  color: Colora.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.width * 0.04
                                ),
                              ),

                              SizedBox(
                                height:  Dimensions.height * 0.05,
                              ),

                              ElevatedButton(
                                onPressed: (){
                                  bloc.add(LoadStores());
                                },
                                child: const Text('تلاش مجدد')
                              )

                            ]
                          )
                          :SingleChildScrollView(
                            child: Column(
                              children: [

                                SizedBox(
                                  height: Dimensions.height * 0.11,
                                ),

                                // tab bar
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: TabBar(
                                    controller: _tabController,
                                    indicator: null,
                                    indicatorPadding: EdgeInsets.zero,
                                    indicatorSize: TabBarIndicatorSize.label,

                                    padding: EdgeInsets.zero,
                                    dividerHeight: 0,
                                    isScrollable: false,

                                    indicatorColor:
                                    Colors.transparent, // Remove indicator color
                                    tabs: [
                                      buildTab(state, 'لیست فروشگاه‌ها', 0),
                                      buildTab(state, 'درخواست جدید', 1),
                                      buildTab(state, 'آمار و خرید', 2),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: Dimensions.height * .795,
                                  child: TabBarView(
                                    controller: _tabController,
                                    physics: const NeverScrollableScrollPhysics(),
                                    children: [

                                      buildTabStoreList(state),

                                      buildTabOrderList(),

                                      Container(
                                        width: Dimensions.width,
                                        height: Dimensions.height,
                                        color: Colors.greenAccent,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                        ),
                    ),

                    const NewAppBar(title: 'داشبورد فروشگاه‌'),

                    //header buttons
                    // Positioned(
                    //   top: Dimensions.height * 0.08,
                    //   width: Dimensions.width,
                    //   height: Dimensions.height * 0.05,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //
                    //       //add new shop
                    //       Container(
                    //         width: Dimensions.width * 0.35,
                    //         height: Dimensions.height * 0.05,
                    //         decoration: BoxDecoration(
                    //           color: Colora.primaryColor,
                    //           borderRadius: BorderRadius.circular(20),
                    //           boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.grey.withOpacity(0.4),
                    //               spreadRadius: 3,
                    //               blurRadius: 5,
                    //               offset: const Offset(0, 5)
                    //             )
                    //           ]
                    //         ),
                    //         alignment: AlignmentDirectional.center,
                    //         child: const Text(
                    //           'ثبت فروشگاه جدید',
                    //           style: TextStyle(
                    //             color: Colora.scaffold,
                    //           ),
                    //         ),
                    //       ),
                    //
                    //       SizedBox(
                    //         width: Dimensions.width * 0.05,
                    //       ),
                    //
                    //       //shop reports
                    //       Container(
                    //         width: Dimensions.width * 0.35,
                    //         height: Dimensions.height * 0.05,
                    //         decoration: BoxDecoration(
                    //             color: Colora.primaryColor,
                    //             borderRadius: BorderRadius.circular(20),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                   color: Colors.grey.withOpacity(0.4),
                    //                   spreadRadius: 3,
                    //                   blurRadius: 5,
                    //                   offset: const Offset(0, 5)
                    //               )
                    //             ]
                    //         ),
                    //         alignment: AlignmentDirectional.center,
                    //         child: const Text(
                    //           'گزارشات فروشگاه',
                    //           style: TextStyle(
                    //             color: Colora.scaffold,
                    //           ),
                    //         ),
                    //       ),
                    //
                    //     ],
                    //   ),
                    // ),

                  ],
                )
              )
            ),
          );
      }),
    );
  }

  Widget buildTab(WorkspaceState state, String label, int tabIndex) {
    bool isActive = activeTabIndex == tabIndex;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: Dimensions.width,
      decoration: BoxDecoration(
        color: isActive
          ? Colora.primaryColor
          : Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colora.primaryColor, width: 2)
      ),
      child: Align(
        alignment: Alignment.center,
        child: FittedBox(
          child: Text(
            label,
            style: TextStyle(
                color: isActive ? Colors.white : Colora.primaryColor
            )
          ),
        ),
      ),
    );

  }

  Widget buildTabStoreList(WorkspaceState state) {
    return ListView.builder(
      itemCount: state.storesList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return StoreCard(
          index: index,
          market: state.storesList[index],
          bloc: bloc,
        );
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
        // const SizedBox(
        //   height: 5,
        // ),
        // const Divider(
        //   thickness: 1,
        // ),
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

}
