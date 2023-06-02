import 'package:intrapair_task/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomerViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();



  final List<String> _genders = ['• Not Specified', '• Male', '• FeMale'];

  void selectedItem(int index) {
    selectedGender = _genders[index];
    notifyListeners();
  }

 

  List<String> get genders => _genders;
  String selectedGender = "";

  bool isTapped = false;

  void tap() {
    isTapped = true;
    notifyListeners();
  }

  void onChangedGender(String? value) {
    selectedGender = value!;
    notifyListeners();
  }

  void navigateBackToLogin() {
    _navigationService.back();
  }
}
