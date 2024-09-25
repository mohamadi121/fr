// ignore_for_file: unused_import

import 'package:asood/shared/utils/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/search_box.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';
import '../../../shared/widgets/store_card.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../vendor/blocs/workspace/workspace_bloc.dart';
import 'submit_fee_inquiry.dart';

@RoutePage()
class InquiryRequestsScreen extends StatelessWidget {
  const InquiryRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: DefaultAppBar(context: context),
      body: SafeArea(
        // maintainBottomViewPadding: false,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SearchBoxWidget(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return StoreCard(
                    bloc: BlocProvider.of<WorkspaceBloc>(context),
                    index: index,
                    market: BlocProvider.of<WorkspaceBloc>(context)
                        .state
                        .storesList[index],
                  );
                },
                childCount: BlocProvider.of<WorkspaceBloc>(context)
                    .state
                    .storesList
                    .length,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      onPress: () {
                        context.router.push(const SubmitFeeInquiryRoute());
                        /*  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SubmitFeeInquiryScreen(),
                          ),
                        ); */
                      },
                      text: "درخواست جدید",
                      width: 200,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const SimpleBotNavBar(),
    );
  }
}
