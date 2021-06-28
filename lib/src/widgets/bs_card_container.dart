import 'package:bs_flutter_card/bs_flutter_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BsCardContainer extends StatelessWidget {

  const BsCardContainer({
    Key? key,
    this.separator = true,
    this.title,
    this.titleStyle,
    this.padding,
    this.margin,
    this.child,
    this.decoration,
    this.actions = const [],
    this.style = const BsCardContainerStyle(),
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  final bool separator;

  final Widget? title;

  final TextStyle? titleStyle;

  final EdgeInsets? padding;

  final EdgeInsets? margin;

  final BoxDecoration? decoration;

  final List<Widget> actions;

  final Widget? child;

  final BsCardContainerStyle style;

  final CrossAxisAlignment crossAxisAlignment;

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              title == null ? Container() : DefaultTextStyle(
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                ).merge(titleStyle),
                child: Expanded(child: Container(
                  padding: padding != null ? padding : EdgeInsets.all(15.0),
                  margin: margin,
                  decoration: decoration,
                  child: title!
                )),
              ),
              actions.length == 0 ? Container() : Expanded(child: Column(
                children: [
                  Container(
                    padding: padding != null ? padding : EdgeInsets.all(15.0),
                    margin: margin,
                    decoration: decoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: actions,
                    ),
                  )
                ],
              )),
            ],
          ),
          child == null ? Container() : Container(
            padding: padding != null ? padding : EdgeInsets.all(15.0),
            margin: margin,
            decoration: decoration,
            child: child
          ),
          !separator && child == null ? Container() : Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: style.borderColor)
              )
            ),
          ),
        ],
      ),
    );
  }
}