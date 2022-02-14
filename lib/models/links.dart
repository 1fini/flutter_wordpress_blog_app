class Links {
  List<Self>? self;
  List<Collection>? collection;
  List<About>? about;
  List<Author>? author;
  List<Replies>? replies;
  List<Archives>? archives;
  List<VersionHistory>? versionHistory;
  List<WpPostType>? wpPostType;
  List<PredecessorVersion>? predecessorVersion;
  List<WpFeaturedmedia>? wpFeaturedmedia;
  List<WpAttachment>? wpAttachment;
  List<WpTerm>? wpTerm;
  List<WpActionPublish>? wpActionPublish;
  List<WpActionUnfilteredHtml>? wpActionUnfilteredHtml;
  List<WpActionSticky>? wpActionSticky;
  List<WpActionAssignAuthor>? wpActionAssignAuthor;
  List<WpActionCreateCategories>? wpActionCreateCategories;
  List<WpActionAssignCategories>? wpActionAssignCategories;
  List<WpActionCreateTags>? wpActionCreateTags;
  List<WpActionAssignTags>? wpActionAssignTags;
  List<WpItems>? wpItems;
  List<Up>? up;
  List<InReplyTo>? inReplyTo;
  List<Children>? children;
  List<Curies>? curies;

  Links.fromJson(Map<String, dynamic> json) {
    if (json['self'] != null) {
      self = [];
      json['self'].forEach((v) {
        self?.add(Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = [];
      json['collection'].forEach((v) {
        collection?.add(Collection.fromJson(v));
      });
    }
    if (json['about'] != null) {
      about = [];
      json['about'].forEach((v) {
        about?.add(About.fromJson(v));
      });
    }
    if (json['author'] != null) {
      author = [];
      json['author'].forEach((v) {
        author?.add(Author.fromJson(v));
      });
    }
    if (json['replies'] != null) {
      replies = [];
      json['replies'].forEach((v) {
        replies?.add(Replies.fromJson(v));
      });
    }
    if (json['archives'] != null) {
      archives = [];
      json['archives'].forEach((v) {
        archives?.add(Archives.fromJson(v));
      });
    }
    if (json['version-history'] != null) {
      versionHistory = [];
      json['version-history'].forEach((v) {
        versionHistory?.add(VersionHistory.fromJson(v));
      });
    }
    if (json['wp:post_type'] != null) {
      wpPostType = [];
      json['wp:post_type'].forEach((v) {
        wpPostType?.add(WpPostType.fromJson(v));
      });
    }
    if (json['predecessor-version'] != null) {
      predecessorVersion = [];
      json['predecessor-version'].forEach((v) {
        predecessorVersion?.add(PredecessorVersion.fromJson(v));
      });
    }
    if (json['wp:featuredmedia'] != null) {
      wpFeaturedmedia = [];
      json['wp:featuredmedia'].forEach((v) {
        wpFeaturedmedia?.add(WpFeaturedmedia.fromJson(v));
      });
    }
    if (json['wp:attachment'] != null) {
      wpAttachment = [];
      json['wp:attachment'].forEach((v) {
        wpAttachment?.add(WpAttachment.fromJson(v));
      });
    }
    if (json['wp:term'] != null) {
      wpTerm = [];
      json['wp:term'].forEach((v) {
        wpTerm?.add(WpTerm.fromJson(v));
      });
    }
    if (json['wp:action-publish'] != null) {
      wpActionPublish = [];
      json['wp:action-publish'].forEach((v) {
        wpActionPublish?.add(WpActionPublish.fromJson(v));
      });
    }
    if (json['wp:action-unfiltered-html'] != null) {
      wpActionUnfilteredHtml = [];
      json['wp:action-unfiltered-html'].forEach((v) {
        wpActionUnfilteredHtml?.add(WpActionUnfilteredHtml.fromJson(v));
      });
    }
    if (json['wp:action-sticky'] != null) {
      wpActionSticky = [];
      json['wp:action-sticky'].forEach((v) {
        wpActionSticky?.add(WpActionSticky.fromJson(v));
      });
    }
    if (json['wp:action-assign-author'] != null) {
      wpActionAssignAuthor = [];
      json['wp:action-assign-author'].forEach((v) {
        wpActionAssignAuthor?.add(WpActionAssignAuthor.fromJson(v));
      });
    }
    if (json['wp:action-create-categories'] != null) {
      wpActionCreateCategories = [];
      json['wp:action-create-categories'].forEach((v) {
        wpActionCreateCategories?.add(WpActionCreateCategories.fromJson(v));
      });
    }
    if (json['wp:action-assign-categories'] != null) {
      wpActionAssignCategories = [];
      json['wp:action-assign-categories'].forEach((v) {
        wpActionAssignCategories?.add(WpActionAssignCategories.fromJson(v));
      });
    }
    if (json['wp:action-create-tags'] != null) {
      wpActionCreateTags = [];
      json['wp:action-create-tags'].forEach((v) {
        wpActionCreateTags?.add(WpActionCreateTags.fromJson(v));
      });
    }
    if (json['wp:action-assign-tags'] != null) {
      wpActionAssignTags = [];
      json['wp:action-assign-tags'].forEach((v) {
        wpActionAssignTags?.add(WpActionAssignTags.fromJson(v));
      });
    }
    if (json['wp:items'] != null) {
      wpItems = [];
      json['wp:items'].forEach((v) {
        wpItems?.add(WpItems.fromJson(v));
      });
    }
    if (json['up'] != null) {
      up = [];
      json['up'].forEach((v) {
        up?.add(Up.fromJson(v));
      });
    }
    if (json['in-reply-to'] != null) {
      inReplyTo = [];
      json['in-reply-to'].forEach((v) {
        inReplyTo?.add(InReplyTo.fromJson(v));
      });
    }
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Children.fromJson(v));
      });
    }
    if (json['curies'] != null) {
      curies = [];
      json['curies'].forEach((v) {
        curies?.add(Curies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['self'] = self?.map((v) => v.toJson()).toList();
    data['collection'] = collection?.map((v) => v.toJson()).toList();
    data['about'] = about?.map((v) => v.toJson()).toList();
    data['author'] = author?.map((v) => v.toJson()).toList();
    data['replies'] = replies?.map((v) => v.toJson()).toList();
    data['archives'] = archives?.map((v) => v.toJson()).toList();
    data['version-history'] = versionHistory?.map((v) => v.toJson()).toList();
    data['wp:post_type'] = wpPostType?.map((v) => v.toJson()).toList();
    data['predecessor-version'] =
        predecessorVersion?.map((v) => v.toJson()).toList();
    data['wp:featuredmedia'] = wpFeaturedmedia?.map((v) => v.toJson()).toList();
    data['wp:attachment'] = wpAttachment?.map((v) => v.toJson()).toList();
    data['wp:term'] = wpTerm?.map((v) => v.toJson()).toList();
    data['wp:action-publish'] =
        wpActionPublish?.map((v) => v.toJson()).toList();
    data['wp:action-unfiltered-html'] =
        wpActionUnfilteredHtml?.map((v) => v.toJson()).toList();
    data['wp:action-sticky'] = wpActionSticky?.map((v) => v.toJson()).toList();
    data['wp:action-assign-author'] =
        wpActionAssignAuthor?.map((v) => v.toJson()).toList();
    data['wp:action-create-categories'] =
        wpActionCreateCategories?.map((v) => v.toJson()).toList();
    data['wp:action-assign-categories'] =
        wpActionAssignCategories?.map((v) => v.toJson()).toList();
    data['wp:action-create-tags'] =
        wpActionCreateTags?.map((v) => v.toJson()).toList();
    data['wp:action-assign-tags'] =
        wpActionAssignTags?.map((v) => v.toJson()).toList();
    data['wp:items'] = wpItems?.map((v) => v.toJson()).toList();
    data['up'] = up?.map((v) => v.toJson()).toList();
    data['in-reply-to'] = inReplyTo?.map((v) => v.toJson()).toList();
    data['children'] = children?.map((v) => v.toJson()).toList();
    data['curies'] = curies?.map((v) => v.toJson()).toList();

    return data;
  }
}

class Self {
  String? href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class Collection {
  String? href;

  Collection({this.href});

  Collection.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class About {
  String? href;

  About({this.href});

  About.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class Author {
  bool? embeddable;
  String? href;

  Author({
    this.embeddable,
    this.href,
  });

  Author.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (embeddable != null) {
      data['embeddable'] = embeddable;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class Replies {
  bool? embeddable;
  String? href;

  Replies({
    this.embeddable,
    this.href,
  });

  Replies.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (embeddable != null) {
      data['embeddable'] = embeddable;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class Archives {
  String? href;

  Archives({this.href});

  Archives.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class VersionHistory {
  int? count;
  String? href;

  VersionHistory({
    this.count,
    this.href,
  });

  VersionHistory.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (count != null) {
      data['count'] = count;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpPostType {
  String? href;

  WpPostType({this.href});

  WpPostType.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class PredecessorVersion {
  int? id;
  String? href;

  PredecessorVersion({
    this.id,
    this.href,
  });

  PredecessorVersion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (id != null) {
      data['id'] = id;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpFeaturedmedia {
  bool? embeddable;
  String? href;

  WpFeaturedmedia({
    this.embeddable,
    this.href,
  });

  WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (embeddable != null) {
      data['embeddable'] = embeddable;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpAttachment {
  String? href;

  WpAttachment({this.href});

  WpAttachment.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpTerm {
  String? taxonomy;
  bool? embeddable;
  String? href;

  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  WpTerm.fromJson(Map<String, dynamic> json) {
    taxonomy = json['taxonomy'];
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (taxonomy != null) {
      data['taxonomy'] = taxonomy;
    }
    if (embeddable != null) {
      data['embeddable'] = embeddable;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionPublish {
  String? href;

  WpActionPublish({this.href});

  WpActionPublish.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionUnfilteredHtml {
  String? href;

  WpActionUnfilteredHtml({this.href});

  WpActionUnfilteredHtml.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionSticky {
  String? href;

  WpActionSticky({this.href});

  WpActionSticky.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionAssignAuthor {
  String? href;

  WpActionAssignAuthor({this.href});

  WpActionAssignAuthor.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionCreateCategories {
  String? href;

  WpActionCreateCategories({this.href});

  WpActionCreateCategories.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionAssignCategories {
  String? href;

  WpActionAssignCategories({this.href});

  WpActionAssignCategories.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionCreateTags {
  String? href;

  WpActionCreateTags({this.href});

  WpActionCreateTags.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpActionAssignTags {
  String? href;

  WpActionAssignTags({this.href});

  WpActionAssignTags.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class WpItems {
  String? href;

  WpItems({this.href});

  WpItems.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class Up {
  bool? embeddable;
  String? postType;
  String? href;

  Up({
    this.embeddable,
    this.postType,
    this.href,
  });

  Up.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    postType = json['post_type'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (embeddable != null) {
      data['embeddable'] = embeddable;
    }
    if (postType != null) {
      data['post_type'] = postType;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class InReplyTo {
  bool? embeddable;
  String? href;

  InReplyTo({
    this.embeddable,
    this.href,
  });

  InReplyTo.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (embeddable != null) {
      data['embeddable'] = embeddable;
    }
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class Children {
  String? href;

  Children({this.href});

  Children.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (href != null) {
      data['href'] = href;
    }
    return data;
  }
}

class Curies {
  String? name;
  String? href;
  bool? templated;

  Curies({
    this.name,
    this.href,
    this.templated,
  });

  Curies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    href = json['href'];
    templated = json['templated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name;
    }
    if (href != null) {
      data['href'] = href;
    }
    if (templated != null) {
      data['templated'] = templated;
    }
    return data;
  }
}
