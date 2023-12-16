import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:project_2/trash/getx/controller/sample.dart';
class GetExample12 extends StatefulWidget {
  const GetExample12({super.key});

  @override
  State<GetExample12> createState() => _GetExample12State();
}

class _GetExample12State extends State<GetExample12> {

  final SampleController _sampleController=
      Get.put(SampleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Counter: ${_sampleController.count}")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  _sampleController.incCount();
                }, child: const Text("Increment")),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: () {
                  _sampleController.decCount();
                }, child: const Text("Decrement"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
