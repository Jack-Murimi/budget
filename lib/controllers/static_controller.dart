import 'package:get/get.dart';

class TitleBarController extends GetxController {
  RxString title = "Budget Demo".obs;

  void changeTitle(String newTitle) {
    title.value = newTitle;
  }
}
