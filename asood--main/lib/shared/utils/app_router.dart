import 'package:asood/modules/cart/screen/shopping_cart.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../app/screens/screens.dart';
import '../../app/screens/splash.dart';
import '../../models/market_model.dart';
import '../../modules/auth/pages/login_screen.dart';
import '../../modules/auth/screens/otp_screen.dart';
import '../../modules/chat/screens/chat_list.dart';
import '../../modules/customer/screens/customer_dashboard_screen.dart';
import '../../modules/inquiry/screens/fee_inquiry.dart';
import '../../modules/inquiry/screens/inquiry_details.dart';
import '../../modules/inquiry/screens/inquiry_requests.dart';
import '../../modules/inquiry/screens/inquiry_response.dart';
import '../../modules/inquiry/screens/orders.dart';
import '../../modules/inquiry/screens/submit_fee_inquiry.dart';
import '../../modules/market/screens/edit_store.dart';
import '../../modules/market/screens/edit_store_screen.dart';
import '../../modules/market/screens/store.dart';
import '../../modules/market/screens/store_info.dart';
import '../../modules/panel/screens/config.dart';
import '../../modules/panel/screens/inbox.dart';
import '../../modules/vendor/screens/create_workspace.dart';
import '../../modules/vendor/screens/dashboard.dart';
import '../../modules/vendor/screens/home.dart';
import '../../modules/profile/screens/profile.dart';
import '../../modules/vendor/screens/stores.dart';
import '../screens/job_management/job_management_screen.dart';
import '../screens/settings/settings_menu_screen.dart';
import '../screens/store_setting_screens/color_setting_screen/color_setting_screen.dart';
import '../screens/store_setting_screens/font-txtColor_setting_screen/font_color_setting_screen.dart';
import '../screens/store_setting_screens/takhfif_setting_screen/takhfif_screen.dart';
import '../screens/store_setting_screens/themes_screen/themes_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true, path: "/splash"),
        AutoRoute(page: CreateWorkSpaceRoute.page, path: "/create_workspace"),
        AutoRoute(page: CustomerDashboardRoute.page, path: "/customer_dashboard"),
        AutoRoute(page: TakhfifRoute.page, path: "/takhfif"),
        AutoRoute(page: ColorSettingRoute.page, path: "/color_setting"),
        AutoRoute(page: FontColorSettingRoute.page, path: "/font_color_setting"),
        AutoRoute(page: FeeInquiryRoute.page, path: "/fee_inquiry"),
        AutoRoute(page: InquiryDetailsRoute.page, path: "/inquiry_details"),
        AutoRoute(page: SettingsPageRoute.page, path: "/settings"),
        AutoRoute(page: OrdersListRoute.page, path: "/orders"),
        AutoRoute(page: PanelInboxRoute.page, path: "/panel_inbox"),
        AutoRoute(page: PanelConfigRoute.page, path: "/panel_config"),
        AutoRoute(page: RoutesListRoute.page, path: "/routes_list"),
    
        AutoRoute(page: EditStoreInfoRoute.page, path: "/edite_store"),
        AutoRoute(page: InquiryRequestsRoute.page, path: "/inquiry_requests"),
        AutoRoute(page: InquiryResponseRoute.page, path: "/inquiry_response"),
        AutoRoute(page: SubmitFeeInquiryRoute.page, path: "/submit_fee_inquiry"),
        AutoRoute(page: VendorDashboardRoute.page, path: "/vendor_dashboard"),
        AutoRoute(page: VendorProfileRoute.page, path: "/vendor_profile"),
        AutoRoute(page: VendorHomeRoute.page, path: "/vendor_home"),
        AutoRoute(page: LoginRoute.page, path: "/login"),
        AutoRoute(page: OtpRoute.page, path: "/otp"),
        AutoRoute(page: StoreRoute.page, path: "/store"),
        AutoRoute(page: StoreInfoRoute.page, path: "/store_info"),
        AutoRoute(page: EditStoreRoute.page, path: "/edit_store"),
        AutoRoute(page: StoresRoute.page, path: "/stores"),
        AutoRoute(page: JobManagementRoute.page, path: "/job_management"),
        AutoRoute(page: MultiViewSliderRoute.page, path: "/multi_view_slider"),
        AutoRoute(page: ShoppingCartRoute.page, path: "/shopping_cart"),
        AutoRoute(page: ChatListRoute.page, path: "/chat_list"),
      ];
}
