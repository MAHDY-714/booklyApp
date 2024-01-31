import 'package:json_annotation/json_annotation.dart';

part 'book_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class BookModel {
  @JsonKey(name: 'kind')
  String kind;
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'etag')
  String etag;
  @JsonKey(name: 'selfLink')
  String selfLink;
  @JsonKey(name: 'volumeInfo')
  VolumeInfo volumeInfo;
  @JsonKey(name: 'saleInfo')
  SaleInfo saleInfo;
  @JsonKey(name: 'accessInfo')
  AccessInfo accessInfo;
  @JsonKey(name: 'searchInfo')
  SearchInfo searchInfo;

  BookModel(
      {this.kind,
      this.id,
      this.etag,
      this.selfLink,
      this.volumeInfo,
      this.saleInfo,
      this.accessInfo,
      this.searchInfo});

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class VolumeInfo {
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'authors')
  List<String> authors;
  @JsonKey(name: 'publisher')
  String publisher;
  @JsonKey(name: 'publishedDate')
  String publishedDate;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'industryIdentifiers')
  List<IndustryIdentifier> industryIdentifiers;
  @JsonKey(name: 'readingModes')
  ReadingModes readingModes;
  @JsonKey(name: 'pageCount')
  int pageCount;
  @JsonKey(name: 'printType')
  String printType;
  @JsonKey(name: 'categories')
  List<String> categories;
  @JsonKey(name: 'maturityRating')
  String maturityRating;
  @JsonKey(name: 'allowAnonLogging')
  bool allowAnonLogging;
  @JsonKey(name: 'contentVersion')
  String contentVersion;
  @JsonKey(name: 'panelizationSummary')
  PanelizationSummary panelizationSummary;
  @JsonKey(name: 'imageLinks')
  ImageLinks imageLinks;
  @JsonKey(name: 'language')
  String language;
  @JsonKey(name: 'previewLink')
  String previewLink;
  @JsonKey(name: 'infoLink')
  String infoLink;
  @JsonKey(name: 'canonicalVolumeLink')
  String canonicalVolumeLink;

  VolumeInfo(
      {this.title,
      this.authors,
      this.publisher,
      this.publishedDate,
      this.description,
      this.industryIdentifiers,
      this.readingModes,
      this.pageCount,
      this.printType,
      this.categories,
      this.maturityRating,
      this.allowAnonLogging,
      this.contentVersion,
      this.panelizationSummary,
      this.imageLinks,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink});

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class IndustryIdentifier {
  @JsonKey(name: 'type')
  String type;
  @JsonKey(name: 'identifier')
  String identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);

  Map<String, dynamic> toJson() => _$IndustryIdentifierToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class ReadingModes {
  @JsonKey(name: 'text')
  bool text;
  @JsonKey(name: 'image')
  bool image;

  ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);

  Map<String, dynamic> toJson() => _$ReadingModesToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PanelizationSummary {
  @JsonKey(name: 'containsEpubBubbles')
  bool containsEpubBubbles;
  @JsonKey(name: 'containsImageBubbles')
  bool containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PanelizationSummaryToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class ImageLinks {
  @JsonKey(name: 'smallThumbnail')
  String smallThumbnail;
  @JsonKey(name: 'thumbnail')
  String thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);

  Map<String, dynamic> toJson() => _$ImageLinksToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class SaleInfo {
  @JsonKey(name: 'country')
  String country;
  @JsonKey(name: 'saleability')
  String saleability;
  @JsonKey(name: 'isEbook')
  bool isEbook;

  SaleInfo({this.country, this.saleability, this.isEbook});

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SaleInfoToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class AccessInfo {
  @JsonKey(name: 'country')
  String country;
  @JsonKey(name: 'viewability')
  String viewability;
  @JsonKey(name: 'embeddable')
  bool embeddable;
  @JsonKey(name: 'publicDomain')
  bool publicDomain;
  @JsonKey(name: 'textToSpeechPermission')
  String textToSpeechPermission;
  @JsonKey(name: 'epub')
  Epub epub;
  @JsonKey(name: 'pdf')
  Pdf pdf;
  @JsonKey(name: 'webReaderLink')
  String webReaderLink;
  @JsonKey(name: 'accessViewStatus')
  String accessViewStatus;
  @JsonKey(name: 'quoteSharingAllowed')
  bool quoteSharingAllowed;

  AccessInfo(
      {this.country,
      this.viewability,
      this.embeddable,
      this.publicDomain,
      this.textToSpeechPermission,
      this.epub,
      this.pdf,
      this.webReaderLink,
      this.accessViewStatus,
      this.quoteSharingAllowed});

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AccessInfoToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Epub {
  @JsonKey(name: 'isAvailable')
  bool isAvailable;

  Epub({this.isAvailable});

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);

  Map<String, dynamic> toJson() => _$EpubToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class Pdf {
  @JsonKey(name: 'isAvailable')
  bool isAvailable;
  @JsonKey(name: 'acsTokenLink')
  String acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);

  Map<String, dynamic> toJson() => _$PdfToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class SearchInfo {
  @JsonKey(name: 'textSnippet')
  String textSnippet;

  SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchInfoToJson(this);
}
