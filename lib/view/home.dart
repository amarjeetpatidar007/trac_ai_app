import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trac_ai/model/api_service.dart';
import 'package:trac_ai/view/automate_stream_view.dart';
import 'package:trac_ai/view/manual_stream_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Trac AI",
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoButton.filled(
                  onPressed: () {
                    Get.to(() => const StreamPageView());
                  },
                  child: const Text('Operate Tractor Using App')),
              const SizedBox(
                height: 20,
              ),
              CupertinoButton.filled(
                  onPressed: () {
                    Get.to(() => const AutomateStreamView());
                  },
                  child: const Text('Automate Tractor')),
            ]),
      ),
    );
  }
}
