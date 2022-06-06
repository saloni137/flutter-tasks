import 'package:flutter/cupertino.dart';

class Token extends StatelessWidget {
  final token;
  const Token({required this.token});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Text(token),
    );
  }
}
