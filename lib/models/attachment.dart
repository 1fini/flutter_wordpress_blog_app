class Attachment {
  int? id;
  DateTime? date;
  String? guid;
  Caption? caption;
  String? mediaType;
  String? sourceUrl;
  SizeData? sizeData;

  Attachment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    caption = Caption.fromJson(json['caption']);
    mediaType = json['media_type'];
    sourceUrl = json['source_url'];
    sizeData = json['sizes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) {
      data['id'] = id;
    }
    // if (date != null) {
    //   data['date'] = date;
    // }
    // if (guid != null) {
    //   data['guid'] = guid;
    // }
    // if (mediaType != null) {
    //   data['media_type'] = mediaType;
    // }
    return data;
  }
}

class Caption {
  String? rendered;

  Caption.fromJson(Map<String, dynamic> json) {
    rendered = json['caption'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (rendered != null) {
      data['rendered'] = rendered;
    }
    return data;
  }
}

class SizeData {
  MediumSize? medium;
  LargeSize? large;
  ThumbnailSize? thumbnail;
}

class MediumSize {
  SizeDetails? sizeDetails;

  MediumSize.fromJson(Map<String, dynamic> json) {
    sizeDetails = json['medium'];
  }
}

class LargeSize {
  SizeDetails? sizeDetails;

  LargeSize.fromJson(Map<String, dynamic> json) {
    sizeDetails = json['large'];
  }
}

class ThumbnailSize {
  SizeDetails? sizeDetails;

  ThumbnailSize.fromJson(Map<String, dynamic> json) {
    sizeDetails = json['thumbnail'];
  }
}

class SizeDetails {
  String? file;
  String? width;
  String? height;
  String? mimeType;
  String? sourceUrl;

  SizeDetails.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }
}
