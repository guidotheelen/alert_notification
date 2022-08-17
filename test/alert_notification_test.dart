import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:alert_notification/alert_notification.dart';

void main() {
  const title = 'AlertNotification';
  const body = 'You should know this.';
  const Widget infoNotification = MaterialApp(
    home: Material(
      child: AlertNotification(
        title: title,
        body: body,
        type: AlertNotificationType.info,
      ),
    ),
  );

  testWidgets('shows components', (tester) async {
    await tester.pumpWidget(infoNotification);

    expect(find.byType(Icon), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(body), findsOneWidget);
  });
}
