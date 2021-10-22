import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  Future<void> onTapEditor() async {
    await Get.toNamed(Routes.editor);
  }
}
