import 'package:flutter/material.dart';

import '../../../common/model/day_model.dart';
import '../../../common/style/app_icons.dart';
import '../../../common/util/extension/context_extension.dart';
import '../widgets/day_names.dart';
import '../widgets/one_day.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Day> calendar = [];

  @override
  void initState() {
    super.initState();
    calendar = context.dependency.homeRepository.getDays();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage(
            AppIcons.bloodRotate,
          ),
        ),
        centerTitle: true,
        title: Text(
          context.lang.august,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.calendar_month,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          DayNames(),
          SizedBox(height: 5),
          Column(
            children: [
              for (int i = 0; i < 35; i += 7)
                Row(
                  children: [
                    for (int j = i; j < i + 7; j++)
                      Expanded(
                        child: OneDay(
                          day1: calendar[j].date.day.toString(),
                          day2: (DateTime
                              .now()
                              .add(Duration(days: j))
                              .day)
                              .toString(),
                          image: calendar[j].icon,
                          maybe: calendar[j].maybe,
                        ),
                      ),
                  ],
                )
            ],
          ),
          ListTile(
            title: Text(
              "${context.lang.august} 28",
              style: context.textTheme.titleLarge,
            ),
            subtitle: Text(
              context.lang.cycleDay,
              style: context.textTheme.bodyLarge,
            ),
            trailing: OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: AssetImage(AppIcons.blood),
                  ),
                  SizedBox(width: 5),
                  Text(
                    context.lang.edit,
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: context.colorScheme.tertiary,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      context.lang.medium,
                      style: context.textTheme.titleLarge?.copyWith(
                        color: context.colorScheme.onTertiary,
                      ),
                    ),
                  ),
                ),
                Text(
                    context.lang.chanceOfGetting,
                    style: context.textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
