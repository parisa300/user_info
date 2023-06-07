import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/passport_controller.dart';
import 'home_screen.dart';

class PassportScreen extends StatelessWidget {
  final passportController = Get.put(PassportController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passport Information'),
        actions:    [
          InkWell(
              onTap: (){
              //  Navigator.push(context,
               //     MaterialPageRoute(builder: (context) => const MyHomePage()));
              },
              child: Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Conect shuftipro',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 14),),
              ))),

        ]
      ),
      body: Center(
        child: Obx(() {
          if (passportController.isLoading.value) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemCount: passportController.passportData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:
                      Text(passportController.passportData[index].passportId),
                  subtitle: Text(
                      passportController.passportData[index].expirationDate),
                  dense: passportController.passportData[index].isActive,
                );
              },
            );
          }
        }),
      ),
    );
  }
}
