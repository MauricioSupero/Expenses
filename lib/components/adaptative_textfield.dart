import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdaptativeTextfield extends StatelessWidget {
  final String label;
  final TextInputAction textInputAction;
  final Function onSubmited;
  final TextEditingController controller;
  final TextInputType keyboardType;

  final List<TextInputFormatter> inputformatters;

  const AdaptativeTextfield({
    this.label,
    this.onSubmited,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.inputformatters,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CupertinoTextField(
              controller: controller,
              keyboardType: keyboardType,
              onSubmitted: onSubmited,
              placeholder: label,
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            ),
          )
        : TextField(
            controller: controller,
            keyboardType: keyboardType,
            onSubmitted: onSubmited,
            decoration: InputDecoration(labelText: label),
            textInputAction: textInputAction,
            inputFormatters: inputformatters,
          );
  }
}
