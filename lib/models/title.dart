class Title {
  String? raw;
  String? rendered;

  Title({this.rendered});

  Title.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['raw'] = raw;
    data['rendered'] = rendered;

    return data;
  }
}
