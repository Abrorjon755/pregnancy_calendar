import '../../../common/model/day_model.dart';
import '../../../common/service/data_service.dart';
import '../../../common/style/app_icons.dart';

abstract interface class IHomeRepository {
  List<Day> getDays();
}

class HomeRepositoryImpl implements IHomeRepository {
  @override
  List<Day> getDays() {
    return calendar.map(
      (e) {
        return Day(
          date: DateTime.parse(e['date'] as String),
          icon: switch (e['icon']) {
            'clover' => AppIcons.lucky,
            'drop' => AppIcons.blood,
            'egg' => AppIcons.sperm,
            _ => null,
          },
          maybe: e['maybe'] != null,
        );
      },
    ).toList();
  }
}
