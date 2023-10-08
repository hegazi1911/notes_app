import 'package:flutter/cupertino.dart';

import 'cusstom_text_fild.dart';
import 'custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => AddNoteFormState();
}

class AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CussstomTextFild(
            onsaved: (value) {
              title = value;
            },
            hint: "title",
          ),
          const SizedBox(height: 16),
          CussstomTextFild(
            onsaved: (value) {
              subtitle = value;
            },
            hint: "content",
            MaxLine: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          customButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
