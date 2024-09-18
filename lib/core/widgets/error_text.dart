import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: const TextStyle(fontSize: 18),
    );
  }
}
