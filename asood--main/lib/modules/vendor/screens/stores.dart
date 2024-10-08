// ignore_for_file: unnecessary_const

import 'package:asood/shared/constants/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/utils/snack_bar_util.dart';
import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/store_card.dart';
import '../blocs/workspace/workspace_bloc.dart';

@RoutePage()
class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  late WorkspaceBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<WorkspaceBloc>(context);
    // Dispatch the event when the screen is opened
    bloc.add(LoadStores());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: DefaultAppBar(context: context, title: 'لیست فروشگاه های من',),
      body: BlocConsumer<WorkspaceBloc, WorkspaceState>(
        listener: (context, state) {
        /*    if (state.status == Status.initial) {
            BlocProvider.of<WorkspaceBloc>(context).add(LoadStores());
          } */
        if (state.status == Status.failure) {
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
                      child: state.status == Status.loading
                        ? const Center(
                          child: const CircularProgressIndicator(),
                        )
                        : SingleChildScrollView(
                            child: Column(
                              children: [

                                SizedBox(
                                  height: Dimensions.height * 0.11,
                                ),

                                ListView.builder(
                                  itemCount: state.storesList.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return StoreCard(
                                      index: index,
                                      market: state.storesList[index],
                                      bloc: bloc,
                                    );
                                  },
                                ),
                              ],
                            ),
                        ),
                    ),

                    const NewAppBar(title: 'لیست فروشگاه‌های من'),

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
}
