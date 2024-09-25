import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';
import '../../../shared/widgets/search_box.dart';
import '../../../shared/widgets/store_card.dart';
import '../../vendor/blocs/workspace/workspace_bloc.dart';
@RoutePage()
class StoreInfoScreen extends StatelessWidget {
  const StoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SearchBoxWidget(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return StoreCard(
                  index: index,
                  market: BlocProvider.of<WorkspaceBloc>(context)
                      .state
                      .storesList[index],
                      bloc: BlocProvider.of<WorkspaceBloc>(context),
                );
              },
              childCount: BlocProvider.of<WorkspaceBloc>(context)
                  .state
                  .storesList
                  .length,
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: const SimpleBotNavBar(),
    );
  }
}
