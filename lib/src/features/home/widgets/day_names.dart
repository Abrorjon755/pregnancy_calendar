import 'package:flutter/material.dart';

import '../../../common/util/extension/context_extension.dart';

class DayNames extends StatelessWidget {
  const DayNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            context.lang.sun,
            style: context.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            context.lang.mon,
            style: context.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            context.lang.tue,
            style: context.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            context.lang.wed,
            style: context.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            context.lang.thu,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyLarge,
          ),
        ),
        Expanded(
          child: Text(
            context.lang.fri,
            style: context.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            context.lang.sat,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
