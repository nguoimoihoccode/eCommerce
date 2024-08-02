import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: 'vnd').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit US phone number format: (+84) 386 191 601
    if (phoneNumber.length == 10) {
      return '(+84${phoneNumber.substring(1)}) ${phoneNumber.substring(1, 3)} ${phoneNumber.substring(4, 6)} ${phoneNumber.substring(7, 9)}';
    }
    
    return phoneNumber;
  }
}