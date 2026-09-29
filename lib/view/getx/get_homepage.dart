import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grid_view_practrice/view/Custom%20widget/app_button.dart';
import 'package:grid_view_practrice/view/Custom%20widget/app_text.dart';

import 'package:get/get.dart';
import 'package:grid_view_practrice/view/getx/controller.dart';

class GetHomepage extends StatefulWidget {
  const GetHomepage({super.key});

  @override
  State<GetHomepage> createState() => _GetHomepageState();
}

class _GetHomepageState extends State<GetHomepage> {
  var c = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    log("=========${c.counter}=====");
    // log("${c.notes}");
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: "State Management",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: AppText(
                  text: "Counter App",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Obx(
                () => AppText(
                  text: "${c.counter}",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              AppText(
                text: "Increment or Decrement Number",
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: AppButon(
                      onPressed: () {
                        c.increment();
                      },
                      text: "+",
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: AppButon(
                      onPressed: () {
                        c.decrement();
                      },
                      text: "-",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() {
                    // if (c.isLoading.value) {
                    //   log("====${c.notes}======");
                    //   return Center(child: CircularProgressIndicator());
                    // }
                    if (c.notes.isEmpty) {
                      return Center(child: AppText(text: "Note Note Found"));
                    }
                    return ListView.builder(
                      itemCount: c.notes.length,
                      itemBuilder: (context, index) {
                        var note = c.notes[index];
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: ListTile(
                            title: AppText(
                              text: "${note["title"] ?? ""}",
                              fontWeight: FontWeight.bold,
                            ),
                            subtitle: AppText(text: "${note['details'] ?? ""}"),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
