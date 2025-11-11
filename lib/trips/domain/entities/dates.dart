import 'package:intl/intl.dart';

class Dates {
	final String start;
	final String end;

	Dates({required this.start,required this.end});

  DateTime get startDate {
    try {
      return DateFormat("dd-MM-yyyy").parse(start);
    } catch (e) {
      throw FormatException("Invalid date format: $start");
    }
  }

  DateTime get endDate {
    try {
      return DateFormat("dd-MM-yyyy").parse(end);
    } catch (e) {
      throw FormatException("Invalid date format: $end");
    }
  }
}


