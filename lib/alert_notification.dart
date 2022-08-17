library alert_notification;

import 'package:flutter/material.dart';

/// An Alert Notification used to inform the user of an event.
class AlertNotification extends StatelessWidget {
  /// The title of the notification.
  final String title;

  /// Font size of the title.
  final double titleFontSize;

  /// The body of the notification.
  final String body;

  /// Font size of the body.
  final double bodyFontSize;

  /// The type of the notification.
  final AlertNotificationType type;

  /// Spacing between elements
  final double spacing;

  /// The radius of the notification edges.
  final BorderRadius radius;

  /// The background color of the notification.
  final Color? backgroundColor;

  /// The border color of the notification.
  final Color? borderColor;

  /// The width of the notification border.
  final double borderWidth;

  /// Color of the title text.
  final Color? titleColor;

  /// Color of the body text.
  final Color? bodyColor;

  /// Callback for when the notification is dismissed.
  final VoidCallback? onDismiss;

  /// Show leading thick line.
  final bool showLeadingStroke;

  const AlertNotification({
    super.key,
    required this.title,
    required this.body,
    required this.type,
    this.onDismiss,
    this.backgroundColor,
    this.borderColor,
    this.titleColor,
    this.bodyColor,
    this.titleFontSize = 16,
    this.bodyFontSize = 14,
    this.spacing = 12,
    this.radius = const BorderRadius.all(Radius.circular(5)),
    this.borderWidth = 1,
    this.showLeadingStroke = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              right: spacing,
            ),
            decoration: BoxDecoration(
              color: backgroundColor ?? type.backgroundColor,
              borderRadius: radius,
              border: Border.all(
                color: borderColor ?? type.elementColor,
                width: borderWidth,
              ),
            ),
            child: Row(
              children: [
                if (showLeadingStroke)
                  Container(
                    width: spacing,
                    height: 70,
                    color: borderColor ?? type.elementColor,
                  ),
                SizedBox(width: spacing),
                Icon(
                  type.icon,
                  color: type.elementColor,
                ),
                SizedBox(width: spacing),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: spacing),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                        color: titleColor ?? type.elementColor,
                      ),
                    ),
                    SizedBox(height: spacing / 2),
                    Text(
                      body,
                      style: TextStyle(
                        fontSize: bodyFontSize,
                        color: bodyColor ?? type.elementColor,
                      ),
                    ),
                    SizedBox(height: spacing),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Outlined notification.
  factory AlertNotification.outlined({
    required String title,
    required String body,
    required AlertNotificationType type,
    Color? backgroundColor,
    Color? borderColor,
    Color? titleColor,
    Color? bodyColor,
    double titleFontSize = 16,
    double bodyFontSize = 14,
    double spacing = 12,
    BorderRadius radius = const BorderRadius.all(Radius.circular(5)),
    double borderWidth = 1,
    VoidCallback? onDismiss,
    bool showLeadingStroke = true,
  }) {
    return AlertNotification(
      title: title,
      body: body,
      type: type,
      backgroundColor: Colors.white,
      borderColor: borderColor,
      titleColor: titleColor,
      bodyColor: bodyColor,
      titleFontSize: titleFontSize,
      bodyFontSize: bodyFontSize,
      spacing: spacing,
      radius: radius,
      borderWidth: borderWidth,
      onDismiss: onDismiss,
      showLeadingStroke: showLeadingStroke,
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
