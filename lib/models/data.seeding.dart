class DataSeeding {

  List<dynamic> timeLineList = [
    {
      'day': 'Monday',
      'timeEntries': [
        {"selected": false, "value": '09:00 - 09:30 AM'},
        {"selected": false, "value": '09:30 - 10:00 AM'},
        {"selected": false, "value": '10:00 - 10:30 AM'},
        {"selected": false, "value": '10:30 - 11:00 AM'},
        {"selected": false, "value": '11:00 - 11:30 AM'},
        {"selected": false, "value": '11:30 - 12:00 AM'},
        {"selected": false, "value": '12:00 - 12:30 PM'},
        {"selected": false, "value": '12:30 - 13:00 PM'},
        {"selected": false, "value": '13:00 - 13:30 PM'},
      ],
      "fromDate": "",
      "toDate":"",
      'slotType': 1,
    },
    {
      'day': 'Tuesday',
      'timeEntries': [
        {"selected": false, "value": '09:00 - 09:30 AM'},
        {"selected": false, "value": '09:30 - 10:00 AM'},
        {"selected": false, "value": '10:00 - 10:30 AM'},
        {"selected": false, "value": '10:30 - 11:00 AM'},
        {"selected": false, "value": '11:00 - 11:30 AM'},
        {"selected": false, "value": '11:30 - 12:00 AM'},
        {"selected": false, "value": '12:00 - 12:30 PM'},
        {"selected": false, "value": '12:30 - 13:00 PM'},
        {"selected": false, "value": '13:00 - 13:30 PM'},
      ],
      "fromDate": "",
      "toDate":"",
      'slotType': 2,
    },
    {
      'day': 'Wednesday',
      'timeEntries': [
        {"selected": false, "value": '09:00 - 09:30 AM'},
        {"selected": false, "value": '09:30 - 10:00 AM'},
        {"selected": false, "value": '10:00 - 10:30 AM'},
        {"selected": false, "value": '10:30 - 11:00 AM'},
        {"selected": false, "value": '11:00 - 11:30 AM'},
        {"selected": false, "value": '11:30 - 12:00 AM'},
        {"selected": false, "value": '12:00 - 12:30 PM'},
        {"selected": false, "value": '12:30 - 13:00 PM'},
        {"selected": false, "value": '13:00 - 13:30 PM'},
      ],
      "fromDate": "",
      "toDate":"",
      'slotType': 1,
    },
    {
      'day': 'Thursday',
      'timeEntries': [
        {"selected": false, "value": '09:00 - 09:30 AM'},
        {"selected": false, "value": '09:30 - 10:00 AM'},
        {"selected": false, "value": '10:00 - 10:30 AM'},
        {"selected": false, "value": '10:30 - 11:00 AM'},
        {"selected": false, "value": '11:00 - 11:30 AM'},
        {"selected": false, "value": '11:30 - 12:00 AM'},
        {"selected": false, "value": '12:00 - 12:30 PM'},
        {"selected": false, "value": '12:30 - 13:00 PM'},
        {"selected": false, "value": '13:00 - 13:30 PM'},
      ],
      "fromDate": "",
      "toDate":"",
      'slotType': 2,
    },
    {
      'day': 'Friday',
      'timeEntries': [
        {"selected": false, "value": '09:00 - 09:30 AM'},
        {"selected": false, "value": '09:30 - 10:00 AM'},
        {"selected": false, "value": '10:00 - 10:30 AM'},
        {"selected": false, "value": '10:30 - 11:00 AM'},
        {"selected": false, "value": '11:00 - 11:30 AM'},
        {"selected": false, "value": '11:30 - 12:00 AM'},
        {"selected": false, "value": '12:00 - 12:30 PM'},
        {"selected": false, "value": '12:30 - 13:00 PM'},
        {"selected": false, "value": '13:00 - 13:30 PM'},
      ],
      "fromDate": "",
      "toDate":"",
      'slotType': 1,
    },
    {
      'day': 'Saturday',
      'timeEntries': [
        {"selected": false, "value": '09:00 - 09:30 AM'},
        {"selected": false, "value": '09:30 - 10:00 AM'},
        {"selected": false, "value": '10:00 - 10:30 AM'},
        {"selected": false, "value": '10:30 - 11:00 AM'},
        {"selected": false, "value": '11:00 - 11:30 AM'},
        {"selected": false, "value": '11:30 - 12:00 AM'},
        {"selected": false, "value": '12:00 - 12:30 PM'},
        {"selected": false, "value": '12:30 - 13:00 PM'},
        {"selected": false, "value": '13:00 - 13:30 PM'},
      ],
      "fromDate": "",
      "toDate":"",
      'slotType': 2,
    },
  ];

  List<dynamic> repeatUntil = [
    {
      "key": "Never",
      "value": false
    },
    {
      "key": "On",
      "value": true
    }
  ];

  String dateSelector = "";
  DateTime date = DateTime.now();
}
