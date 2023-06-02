

import 'package:intrapair_task/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:intrapair_task/ui/views/onboard/onboard_view.dart';
import 'package:intrapair_task/ui/views/login/login_view.dart';
import 'package:intrapair_task/ui/views/customer/customer_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: OnboardView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: CustomerView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  
 
)
class App {}
