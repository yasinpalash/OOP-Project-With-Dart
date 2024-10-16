class DateRange {
  DateTime start;
  DateTime end;
  DateRange({required this.start, required this.end});

  bool isWithinRange(DateTime date) {
    return date.isAfter(start) && date.isBefore(end);
  }
}
