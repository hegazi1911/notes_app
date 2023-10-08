import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CussstomTextFild extends StatelessWidget {
  const CussstomTextFild(
      {super.key, required this.hint, this.MaxLine = 1, this.onsaved});
  final String hint;
  final int MaxLine;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required ";
        }
        return null;
      },
      cursorColor: KPrimaryColor,
      maxLines: MaxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: KPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
