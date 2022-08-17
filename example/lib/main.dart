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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AlertNotification(
                title: 'Info',
                body: 'You should know this.',
                type: AlertNotificationType.info,
              ),
              SizedBox(height: 16),
              AlertNotification(
                title: 'Success',
                body: 'All good!',
                type: AlertNotificationType.success,
              ),
              SizedBox(height: 16),
              AlertNotification(
                title: 'Warning',
                body: 'You should probably worry about this.',
                type: AlertNotificationType.warning,
              ),
              SizedBox(height: 16),
              AlertNotification(
                title: 'Error',
                body: 'Something is wrong!',
                type: AlertNotificationType.error,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
