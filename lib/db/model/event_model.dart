class EventModel {
  String id;
  String title;
  String description;
  String lat;
  String long;
  DateTime date;
  DateTime time;
  int eventTypeId;
  EventModel({
    required this.id,
    required this.title,
    required this.description,
    required this.lat,
    required this.long,
    required this.date,
    required this.time,
    required this.eventTypeId,
  });

  static List<EventModel> events = [
    EventModel(
      id: "1",
      title: "Event 1",
      description: "Event 1 Description",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 1,
    ),
    EventModel(
      id: "2",
      title: "Event 2",
      description: "Event 2 Descsription",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 1,
    ),
    EventModel(
      id: "3",
      title: "Event 3",
      description: "Event 3 Description",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 2,
    ),
    EventModel(
      id: "4",
      title: "Event 4",
      description: "Event 4 Description",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 3,
    ),
    EventModel(
      id: "5",
      title: "Event 5",
      description: "Event 5 Description",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 4,
    ),
    EventModel(
      id: "5",
      title: "Event 6",
      description: "Event 6 Description",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 4,
    ),
    EventModel(
      id: "5",
      title: "Event 7",
      description: "Event 7 Description",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 4,
    ),
    EventModel(
      id: "6",
      title: "Event 8",
      description: "Event 8 Description",
      lat: "1.0",
      long: "1.0",
      date: DateTime.now(),
      time: DateTime.now(),
      eventTypeId: 4,
    ),
  ];
}
