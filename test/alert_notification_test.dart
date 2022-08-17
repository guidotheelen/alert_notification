import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:alert_notification/alert_notification.dart';

void main() {
  const title = 'AlertNotification';
  const body = 'You should know this.';
  const Widget notification = MaterialApp(
    home: Material(
      child: AlertNotification(
        title: title,
        body: body,
        type: AlertNotificationType.info,
      ),
    ),
  );
  final Widget outlinedNotification = MaterialApp(
    home: Material(
      child: AlertNotification.outlined(
        title: title,
        body: body,
        type: AlertNotificationType.info,
      ),
    ),
  );

  testWidgets('shows notification', (tester) async {
    await tester.pumpWidget(notification);

    expect(find.byType(Icon), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(body), findsOneWidget);
  });

  testWidgets('shows outlined notification', (tester) async {
    await tester.pumpWidget(outlinedNotification);

    expect(find.byType(Icon), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(body), findsOneWidget);
  });
}
