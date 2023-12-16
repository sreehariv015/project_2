import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SampleController extends GetxController{
  RxInt count=0.obs;

  void incCount(){
    count=count+1;
  }
  void decCount(){
    count=count-1;
  }

}