// ignore_for_file: unnecessary_const

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
      appBar: DefaultAppBar(context: context),
      body: BlocConsumer<WorkspaceBloc, WorkspaceState>(
          listener: (context, state) {
        /*    if (state.status == Status.initial) {
            BlocProvider.of<WorkspaceBloc>(context).add(LoadStores());
          } */
        if (state.status == Status.failure) {
          showSnackBar(context, "مشکلی در بارگذاری پیش آمده , مجدد تلاش کنید!");
        }
      }, builder: (context, state) {
        return SafeArea(
          child: state.status == Status.loading
              ? const Center(
                  child: const CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: state.storesList.length,
                  itemBuilder: (context, index) {
                    return StoreCard(
                      index: index,
                      market: state.storesList[index],
                      bloc: bloc,
                    );
                  },
                ),
        );
      }),
    );
  }
}
