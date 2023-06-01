import 'package:intrapair_task/app/app.locator.dart';
import 'package:intrapair_task/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }
}
