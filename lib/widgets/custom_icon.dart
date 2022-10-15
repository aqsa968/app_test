import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData? icon;
  double? size;
  Color? color;
  String? label;
  CustomIcon(IconData icon, {Key? key,this.label,this.size,this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: size,
          color: color,
        ),
        Text(label??"",style: TextStyle(fontSize: 11,color: Color(0xffB8B8D2)),),
      ],
    );
  }
}
