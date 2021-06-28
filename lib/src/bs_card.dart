import 'package:bs_flutter_card/bs_flutter_card.dart';
import 'package:flutter/material.dart';

class BsCard extends StatelessWidget {
  const BsCard({
    Key? key,
    required this.children,
    this.margin,
    this.alignment,
    this.style = const BsCardStyle(),
  }) : super(key: key);

  final List<Widget> children;

  final EdgeInsetsGeometry? margin;

  final AlignmentGeometry? alignment;

  final BsCardStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: style.decoration,
      alignment: alignment,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
