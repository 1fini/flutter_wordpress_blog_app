class Excerpt {
  String? raw;
  String? rendered;
  bool? protected;

  Excerpt({this.rendered});

  Excerpt.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['raw'] = raw;
    data['rendered'] = rendered;
    data['protected'] = protected;

    return data;
  }
}
