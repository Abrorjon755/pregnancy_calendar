import 'package:flutter/material.dart';

import '../../../common/style/app_icons.dart';
import '../../../common/util/extension/context_extension.dart';

class OneDay extends StatelessWidget {
  const OneDay({
    super.key,
    required this.day1,
    required this.day2,
    required this.image,
    required this.maybe,
  });

  final String day1;
  final String day2;
  final String? image;
  final bool maybe;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: maybe
            ? context.colorScheme.tertiary
            : image == AppIcons.blood
                ? context.colorScheme.primaryContainer
                : context.colorScheme.onPrimary,
        border: Border.all(
          width: 0.5,
          color: context.colorScheme.outlineVariant,
        ),
      ),
      child: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    day1,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: maybe
                          ? context.colorScheme.onTertiary
                          : context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Spacer(),
                  Text(
                    day2,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: maybe
                          ? context.colorScheme.onTertiary
                          : context.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              Spacer(),
              image != null
                  ? Image(
                      image: AssetImage(
                        image!,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
