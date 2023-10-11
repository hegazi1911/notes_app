import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constans.dart';

class customButton extends StatelessWidget {
  const customButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
