library alert_notification;

import 'package:flutter/material.dart';

/// An Alert Notification used to inform the user of an event.
class AlertNotification extends StatelessWidget {
  /// The title of the notification.
  final String title;

  /// The body of the notification.
  final String body;

  /// The type of the notification.
  final AlertNotificationType type;

  /// Callback for when the notification is dismissed.
  final VoidCallback? onDismiss;

  const AlertNotification({
    super.key,
    required this.title,
    required this.body,
    required this.type,
    this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: type.backgroundColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: type.elementColor,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  type.icon,
                  color: type.elementColor,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: type.elementColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      body,
                      style: TextStyle(
                        fontSize: 14,
                        color: type.elementColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

enum AlertNotificationType {
  info(
    elementColor: Color.fromARGB(255, 30, 129, 168),
    backgroundColor: Color.fromARGB(255, 204, 235, 251),
    icon: Icons.info_outline,
  ),
  success(
    elementColor: Color.fromARGB(255, 62, 133, 104),
    backgroundColor: Color.fromARGB(255, 219, 241, 216),
    icon: Icons.check_circle_outline,
  ),
  warning(
    elementColor: Color.fromARGB(255, 182, 140, 52),
    backgroundColor: Color.fromARGB(255, 254, 238, 187),
    icon: Icons.warning_amber_rounded,
  ),
  error(
    elementColor: Color.fromARGB(255, 221, 92, 92),
    backgroundColor: Color.fromARGB(255, 248, 199, 199),
    icon: Icons.error_outline_rounded,
  );

  const AlertNotificationType({
    required this.elementColor,
    required this.backgroundColor,
    required this.icon,
  });

  final Color elementColor;
  final Color backgroundColor;
  final IconData icon;
}
