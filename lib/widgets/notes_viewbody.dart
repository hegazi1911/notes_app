import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
            icon: Icons.search,
            title: 'Notes',
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
