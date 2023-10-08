import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/cusstom_text_fild.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNotesViewBody(),
    );
  }
}

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          customAppBar(
            icon: Icons.check,
            title: "Notes",
          ),
          SizedBox(
            height: 30,
          ),
          CussstomTextFild(hint: "title"),
          SizedBox(
            height: 16,
          ),
          CussstomTextFild(
            hint: "content",
            MaxLine: 10,
          )
        ],
      ),
    );
  }
}
