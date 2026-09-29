import 'dart:developer';

import 'package:get/get.dart';
import 'package:grid_view_practrice/view/getx/service/note_get_data.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  RxList notes = [].obs;
  RxBool isLoading = true.obs;
  void increment() {
    if (counter >= 0) {
      counter++;
    }
  }

  void decrement() {
    if (counter > 0) {
      counter--;
    }
  }

  Future getNote() async {
    try {
      isLoading.value = true;
      var status = await NoteGetData().faceNoteData();

      if (status != null) {
        notes.addAll(status);
        log("=====note face Successfully========");
      } else {
        log("====data failed======");
      }
    } catch (e) {
      log("Error$e");
    } finally {
      isLoading.value =false;
    }
  }

  @override
  void onInit() {
    getNote();
    log("${notes}");
    super.onInit();
  }
}
