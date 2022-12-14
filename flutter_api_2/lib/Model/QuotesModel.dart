// ignore_for_file: file_names

class Quotes {
  int? id;
  String? quote;
  String? author;

  Quotes({this.id, this.quote, this.author});

  Quotes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quote = json['quote'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['quote'] = quote;
    data['author'] = author;
    return data;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '\nid : $id \n Quote : $quote \n Author : $author \n';
  }
}
