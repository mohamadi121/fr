// ignore_for_file: prefer_const_declarations

import 'package:asood/shared/widgets/search_box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/default_appbar.dart';
import '../../../shared/widgets/simple_bot_navbar.dart';
import '../components/widgets/message_card.dart';

@RoutePage()
class PanelInboxScreen extends StatelessWidget {
  const PanelInboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context: context),
      body: const SafeArea(
        child: InboxScreen(),
      ),
      bottomNavigationBar: const SimpleBotNavBar(),
    );
  }
}

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SearchBoxWidget(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final int itemCount = 10;
              if (index < itemCount) {
                return const MessageCardWidget();
              }
              return null;
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
