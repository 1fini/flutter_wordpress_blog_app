class Content {
  String? raw;
  String? rendered;
  bool? protected;
  int? blockVersion;

  Content({this.rendered});

  Content.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    rendered = json['rendered'];
    protected = json['protected'];
    blockVersion = json['block_version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['raw'] = raw;
    data['rendered'] = rendered;
    data['protected'] = protected;
    data['block_version'] = blockVersion;

    return data;
  }
}
