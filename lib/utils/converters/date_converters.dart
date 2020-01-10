class DateConverters {
  /// The Argo API returns the date in the following
  /// format: `2019-11-12`, this function converts this [string] into a [date]
  static DateTime getDateFromApiString(String date) {
    final parts = date.split('-');
    return DateTime.utc(
      int.parse(parts[0]),
      int.parse(parts[1]),
      int.parse(parts[2]),
    );
  }
}
