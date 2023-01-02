import 'package:get/get.dart';

import 'shared/services/firebase_service.dart';

class DependencyInjection {
  static init() async {
    //Sıralama önemli önce firebase'in core'unun gelmesi gerekiyor.
    //Önce firebase servislerinin gelmesi gerekiyor yoksa authservise gelemez.
    await Get.putAsync(() => FirebaseService().init());
   // await Get.putAsync(() => AuthService().init());
   // await Get.putAsync(() => FirestoreService().init());
   // await Get.putAsync(() => AnalyticsService().init());
  }
}