import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_sizes.dart';
import '../../../../../core/utils/constants/app_styles.dart';

class DateProvider extends ChangeNotifier {
  DateTime _selectedDate = DateTime.now();

  DateTime getSelectedDate() {
    return _selectedDate;
  }

  String getDayLabel() {
    return _selectedDate.day.toString().padLeft(2, '0');
  }

  String getMonthLabel() {
    return _getMonthName(_selectedDate.month);
  }

  String getYearLabel() {
    return _selectedDate.year.toString();
  }

  Widget buildSegmentButton(String label, BuildContext context) {
    return InkWell(
      onTap: () {
        _pickDate(context);
      },
      child: Container(
        height: 92,
        width: 119,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: BAppColors.white.withOpacity(0.5),
            width: 2,
          ),
          color: const Color(0xFFD9D9D9).withOpacity(0.15),
        ),
        child: Text(
          label,
          style: BAppStyles.poppins(
            color: BAppColors.white,
            fontSize: BSizes.fontSizeMd,
            weight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  String _getMonthName(int month) {
    const List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return months[month - 1];
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      _selectedDate = picked;
    }
    notifyListeners();
  }
}
