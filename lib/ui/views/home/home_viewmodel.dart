import 'package:mydev/app/app.bottomsheets.dart';
import 'package:mydev/app/app.dialogs.dart';
import 'package:mydev/app/app.locator.dart';
import 'package:mydev/app/app.router.dart';
import 'package:mydev/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final RouterService _routerService = locator<RouterService>();
  String get counterLabel => 'Counter is: $_counter';

  final int _counter = 0;

  void incrementCounter() {
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void goLogin() {
    _routerService.navigateToLoginView();
  }
}
