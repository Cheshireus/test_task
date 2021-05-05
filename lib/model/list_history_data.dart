class HistoryCardDate {
  String title;
  DateTime date;
  List<DateTime> listTime;
  String subtitle;

  HistoryCardDate({
    required this.title,
    this.subtitle = '',
    required this.date,
    required this.listTime,
  });
}

class ListHistoryData {
  List<HistoryCardDate> list;
  ListHistoryData(this.list);
}
