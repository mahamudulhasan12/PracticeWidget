import 'dart:developer';

import 'package:get/get.dart';
import 'package:grid_view_practrice/view/getx/service/note_get_data.dart';

class CounterController extends GetxController{
  RxInt counter = 0.obs;
  RxList notes =[].obs;

  void increment(){
    if(counter >=0){
      counter++;
    }
  }


  void decrement(){
    if(counter >0){
      counter--;
    }
  }
  Future getNote()async{
    List temp =[];
    notes.value = temp;
    var status = await NoteGetData().getdata();

    if(status !=true){
      log("=========note sucessfuly=======");
      temp.addAll(status);
      log("=====note face Successfully========");
    }else{
      log("====data failed======");
    }
  }
  @override
  void onInit() {
    getNote();
    super.onInit();
  }

}