// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:android_alarm_manager/android_alarm_manager.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await AndroidAlarmManager.initialize();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Alarm Manager App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
//   TextEditingController _timeController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     var initializationSettingsAndroid =
//     AndroidInitializationSettings('@mipmap/ic_launcher');
//     var initializationSettings =
//     InitializationSettings(android: initializationSettingsAndroid);
//     flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//     flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }
//
//   Future<void> _scheduleNotification(DateTime scheduledTime) async {
//     var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
//       'alarm_notification',
//       'alarm_notification',
//       icon: '@mipmap/ic_launcher',
//       sound: RawResourceAndroidNotificationSound('alarm_sound'),
//       largeIcon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
//     );
//
//     var platformChannelSpecifics =
//     NotificationDetails(android: androidPlatformChannelSpecifics);
//
//     await flutterLocalNotificationsPlugin.schedule(
//       0,
//       'Alarm',
//       'Time to wake up!',
//       scheduledTime,
//       platformChannelSpecifics,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Alarm Manager App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: _timeController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter time in HH:mm format',
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _setAlarm();
//               },
//               child: Text('Set Alarm'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _setAlarm() {
//     String time = _timeController.text;
//     if (time.isEmpty) {
//       _showSnackBar('Please enter a valid time');
//       return;
//     }
//
//     List<String> timeComponents = time.split(':');
//     if (timeComponents.length != 2) {
//       _showSnackBar('Invalid time format');
//       return;
//     }
//
//     int? hour = int.tryParse(timeComponents[0]);
//     int? minute = int.tryParse(timeComponents[1]);
//
//     if (hour == null || minute == null || hour < 0 || hour > 23 || minute < 0 || minute > 59) {
//       _showSnackBar('Invalid time values');
//       return;
//     }
//
//     DateTime scheduledTime = DateTime.now().add(Duration(hours: hour, minutes: minute));
//
//     _scheduleNotification(scheduledTime);
//     _showSnackBar('Alarm set for $hour:$minute');
//   }
//
//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         duration: const Duration(seconds: 2),
//       ),
//     );
//   }
// }