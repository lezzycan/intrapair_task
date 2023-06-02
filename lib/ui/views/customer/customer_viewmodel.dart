import 'package:intrapair_task/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomerViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final List<String> _genders = ['. Not Specified', '. Male', '. FeMale'];

  List<String> get genders => _genders;
  String selectedGender = '. Not Specified';

  void onChangedGender(String? value) {
    selectedGender = value!;
    notifyListeners();
  }

  void navigateBackToLogin() {
    _navigationService.back();
  }
}
