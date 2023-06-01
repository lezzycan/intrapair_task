import 'package:intrapair_task/app/app.locator.dart';
import 'package:intrapair_task/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool _isVisible = false;
  bool get isVisible => _isVisible;

  void toggleRevealText() {
    _isVisible = !_isVisible;
    notifyListeners();
  }

  void navigateToCustomerScreen() {
    _navigationService.navigateTo(Routes.customerView);
  }
}
