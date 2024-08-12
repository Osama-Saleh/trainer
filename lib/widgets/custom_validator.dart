class CustomValidator {
  static String? validateNumber(String? value){
    int? number = int.tryParse(value!);
                  if (value.isEmpty) {
                    return 'Number1 is required';
                  } else if (number! > 9) {
                    return 'Number should be between 0 and 9';
                  }
                  return null;
  }
}