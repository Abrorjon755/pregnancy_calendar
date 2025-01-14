class Day {
  final DateTime date;
  final String? icon;
  final bool maybe;

  const Day({
    required this.date,
    required this.maybe,
    this.icon,
  });

  factory Day.fromJson(Map<String, Object?> json) {
    return Day(
      date: DateTime.parse(json['date'] as String),
      icon: json['icon'] as String?,
      maybe: json['maybe'] as bool,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'date': date.toIso8601String(),
      'icon': icon,
      'maybe': maybe,
    };
  }

  Day copyWith({
    DateTime? date,
    String? icon,
    bool? maybe,
  }) {
    return Day(
      date: date ?? this.date,
      icon: icon ?? this.icon,
      maybe: maybe ?? this.maybe,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Day) return false;
    return date == other.date && icon == other.icon && maybe == other.maybe;
  }

  @override
  int get hashCode => Object.hash(date, icon, maybe);

  @override
  String toString() => 'Day(date: $date, icon: $icon, maybe: $maybe)';
}
