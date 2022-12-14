// ignore_for_file: file_names

abstract class EndPoint {
  static quotes({int? quotesIndex}) =>
      quotesIndex == null ? "/quotes" : "/quotes/$quotesIndex";
  
}
