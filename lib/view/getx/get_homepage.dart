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
    return  Scaffold(
      appBar: AppBar(
        title: AppText(text: "State Management",fontSize: 16,fontWeight: FontWeight.bold,),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: AppText(text: "Counter App",fontWeight: FontWeight.bold,)),
              SizedBox(height: 20,),
              Obx(()=>AppText(text: "${c.counter}",fontWeight: FontWeight.bold,fontSize: 20,),),
              SizedBox(height: 10,),
              AppText(text: "Increment or Decrement Number",fontSize: 12,fontWeight: FontWeight.bold,),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  SizedBox(width:50,height:30,child: AppButon(onPressed: (){
                    c.increment();

                  }, text: "+",)),
                  SizedBox(width:50,height:30,child: AppButon(onPressed: (){
                    c.decrement();

                  }, text: "-",)),
                ],
              ),
              SizedBox(height: 20,),

              Card(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: c.notes.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(text: "${c.notes[index]['title'] ?? ""}",fontWeight: FontWeight.bold,fontSize: 16,),
                            AppText(text: "${c.notes[index]['details'] ?? ""}")
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

