extension StringExtensions on String {
  double toDouble() => double.tryParse(this);
  DateTime toDateTime() => DateTime.tryParse(this);
  int toInt() => int.tryParse(this);

  int toIntDef(int def) {
    if (this == '') return def;
    return int.tryParse(this);
  }

  bool charIsNum(c) {
    return '0,1,2,3,4,5,6,7,8,9'.contains(c);
  }

  bool strIsNumber() {
    int A, lenStr;
    bool result = false;
    lenStr = this.length;
    result = (lenStr > 0);
    A = 0;
    while (result && (A < lenStr)) {
      result = charIsNum(this[A]);
      A++;
    }
    return result;
  }

  String copy(int start, int count) {
    return this.substring(start, start + count);
  }

  operator <=(value) => ((this.compareTo(value) <= 0));
  operator >=(value) => ((this.compareTo(value) >= 0));
}
