import 'package:get/get.dart';

class FontController extends GetxController {
  RxList<String> fonts = ['NotoSans','Pacifico','Comfortaa'].obs;
  RxString fontUse = ''.obs;
  intFont() {
    fontUse = fonts.last.obs;
    update();
    return fontUse;
  }

  changeFont(int index) {
    fontUse = fonts[index].obs;
    update();
  }
}
