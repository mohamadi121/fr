import 'package:asood/modules/market/blocs/add_product/add_product_bloc.dart';
import 'package:asood/modules/vendor/blocs/vendor/vendor_bloc.dart';
import 'package:asood/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'package:isar/isar.dart';

import 'modules/auth/blocs/login_bloc/login_bloc.dart';
import 'modules/inquiry/blocs/inquiry/inquiry_bloc.dart';
import 'modules/market/blocs/bloc/market_bloc.dart';
import 'modules/vendor/blocs/create_workspace/create_workspace_bloc.dart';
import 'blocs/map_bloc/map_bloc.dart';
import 'app/blocs/splash/splash_bloc.dart';
import 'modules/vendor/blocs/workspace/workspace_bloc.dart';
import 'repositories/user_repository.dart';
import 'shared/utils/app_router.dart';

void main() async {
  // await Isar.initializeIsarCore();

  runApp(Asood());
}

class Asood extends StatelessWidget {
  Asood({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()),
        // BlocProvider(create: (context) => MultiViewBloc()),
        BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(userRepo: UserRepository())),
        BlocProvider(
          create: (context) => WorkspaceBloc(),
        ),
        BlocProvider<CreateWorkSpaceBloc>(
          create: (context) => CreateWorkSpaceBloc(),
        ),
        BlocProvider<LocationBloc>(
          create: (context) => LocationBloc(),
        ),
        BlocProvider<InquiryBloc>(
          create: (context) => InquiryBloc(),
        ),
        BlocProvider<VendorBloc>(
          create: (context) => VendorBloc(),
        ),
        BlocProvider<MarketBloc>(
          create: (context) => MarketBloc(),
        ),
        BlocProvider<AddProductBloc>(
          create: (context) => AddProductBloc(),
        ),
      ],
      child: MaterialApp.router(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child as Widget
          );
        },
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('fa', ''),
          // Add more locales as needed
        ],
        locale: const Locale('fa', ''),
        title: 'آسود',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colora.primaryColor),
          useMaterial3: true,
          fontFamily: 'irs'
        ),
      ),
    );
  }
}
