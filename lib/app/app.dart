import 'package:mydev/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:mydev/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:mydev/ui/views/home/home_view.dart';
import 'package:mydev/ui/views/startup/startup_view.dart';
import 'package:mydev/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:mydev/ui/views/login/login_view.dart';
import 'package:mydev/ui/views/admin/admin_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(page: HomeView),
    CustomRoute(page: LoginView),
    CustomRoute(page: AdminView),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
