import 'package:alert_notification/alert_notification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AlertNotification Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter AlertNotification Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Default notification',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(height: 16),
                const AlertNotification(
                  title: 'Info',
                  body: 'You should know this.',
                  type: AlertNotificationType.info,
                ),
                const SizedBox(height: 16),
                const AlertNotification(
                  title: 'Success',
                  body: 'All good!',
                  type: AlertNotificationType.success,
                ),
                const SizedBox(height: 16),
                const AlertNotification(
                  title: 'Warning',
                  body: 'You should probably worry about this.',
                  type: AlertNotificationType.warning,
                ),
                const SizedBox(height: 16),
                const AlertNotification(
                  title: 'Error',
                  body: 'Something is wrong!',
                  type: AlertNotificationType.error,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Outlined notification',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(height: 16),
                AlertNotification.outlined(
                  title: 'Info',
                  body: 'You should know this.',
                  type: AlertNotificationType.info,
                ),
                const SizedBox(height: 16),
                AlertNotification.outlined(
                  title: 'Success',
                  body: 'All good!',
                  type: AlertNotificationType.success,
                ),
                const SizedBox(height: 16),
                AlertNotification.outlined(
                  title: 'Warning',
                  body: 'You should probably worry about this.',
                  type: AlertNotificationType.warning,
                ),
                const SizedBox(height: 16),
                AlertNotification.outlined(
                  title: 'Error',
                  body: 'Something is wrong!',
                  type: AlertNotificationType.error,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
