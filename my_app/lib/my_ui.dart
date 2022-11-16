import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/controller.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Increment'),
      ),
      body:  const MyUI(),
    );
  }
}
class MyUI extends StatefulWidget{
  const MyUI({super.key});

  @override
  State<MyUI> createState() => _MyUIState();
}

class _MyUIState extends State<MyUI> {
  final StoreController controller = Get.put(StoreController());

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          GetBuilder<StoreController>(builder: (storecontroller){
            return Text(storecontroller.result.toString());
          }),
          TextFormField(
            controller: controller.output,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Enter number'),
              ),
          ),
          Padding(padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: (){
                controller.increment();
              },
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green
                ),child: const Center(child: Text('Increment'),),
                ),
            )
            ),
        ],
      ),
    );
  }
}