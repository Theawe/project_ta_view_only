import 'package:get/get.dart';

class ProductController extends GetxController {
  RxBool? editMode = RxBool(false);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void changeMode() {
    if (editMode == false) {
      editMode!.value = true;
    } else {
      print('false');
      editMode!.value = false;
    }
  }
}
