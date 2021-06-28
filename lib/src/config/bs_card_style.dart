import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

class BsCardStyle {

  const BsCardStyle({
    this.decoration = const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      boxShadow: [
        BsShadow.regular
      ]
    )
  });

  final BoxDecoration decoration;
}