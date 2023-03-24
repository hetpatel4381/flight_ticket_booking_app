import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget(
      {super.key, required this.sections, this.width = 3, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(
                (constraints.constrainWidth() / sections).floor(),
                (index) => SizedBox(
                      width: width,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade400),
                      ),
                    )));
      },
    );
  }
}
