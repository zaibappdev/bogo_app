import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../provider/date_provider.dart';

class DateSelector extends StatelessWidget {
  const DateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final readDProvider = context.read<DateProvider>();
    final watchDProvider = context.watch<DateProvider>();
    return Center(
      child: SizedBox(
        width: 410,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            readDProvider.buildSegmentButton(
              watchDProvider.getDayLabel(),
              context,
            ),
            readDProvider.buildSegmentButton(
              watchDProvider.getMonthLabel(),
              context,
            ),
            readDProvider.buildSegmentButton(
              watchDProvider.getYearLabel(),
              context,
            ),
          ],
        ),
      ),
    );
  }
}
