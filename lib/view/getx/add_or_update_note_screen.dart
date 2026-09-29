import 'package:flutter/material.dart';
import 'package:grid_view_practrice/view/Custom%20widget/app_text.dart';
import 'package:grid_view_practrice/view/Custom%20widget/app_textfield.dart';

class AddOrUpdateNoteScreen extends StatefulWidget {
  const AddOrUpdateNoteScreen({super.key});

  @override
  State<AddOrUpdateNoteScreen> createState() => _AddOrUpdateNoteScreenState();
}

class _AddOrUpdateNoteScreenState extends State<AddOrUpdateNoteScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: "Note add",
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        toolbarHeight: 40,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          AppTextField(controller: titleController,hindText: "Title",inputType: TextInputType.text,outlineBorder: InputBorder.none,focuseBorder: InputBorder.none,hTStyle: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 10,),
          AppTextField(controller: detailsController,hindText: "details",inputType: TextInputType.multiline,outlineBorder: InputBorder.none,focuseBorder: InputBorder.none,hTStyle: TextStyle(
              fontWeight: FontWeight.bold,
          ),
            maxline: null,
            textInputAction: TextInputAction.newline,
          ),
        ],
      ),
    );
  }
}
