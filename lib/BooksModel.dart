/// kind : "books#volume"
/// id : "gL34DwAAQBAJ"
/// etag : "UrGgIBBJfZg"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/gL34DwAAQBAJ"
/// volumeInfo : {"title":"Concepts, Techniques, and Models of Computer Programming","authors":["Peter Van Roy","Seif Haridi"],"publisher":"MIT Press","publishedDate":"2004-02-20","description":"Teaching the science and the technology of programming as a unified discipline that shows the deep relationships between programming paradigms. This innovative text presents computer programming as a unified discipline in a way that is both practical and scientifically sound. The book focuses on techniques of lasting value and explains them precisely in terms of a simple abstract machine. The book presents all major programming paradigms in a uniform framework that shows their deep relationships and how and where to use them together. After an introduction to programming concepts, the book presents both well-known and lesser-known computation models (\"programming paradigms\"). Each model has its own set of techniques and each is included on the basis of its usefulness in practice. The general models include declarative programming, declarative concurrency, message-passing concurrency, explicit state, object-oriented programming, shared-state concurrency, and relational programming. Specialized models include graphical user interface programming, distributed programming, and constraint programming. Each model is based on its kernel language—a simple core language that consists of a small number of programmer-significant elements. The kernel languages are introduced progressively, adding concepts one by one, thus showing the deep relationships between different models. The kernel languages are defined precisely in terms of a simple abstract machine. Because a wide variety of languages and programming paradigms can be modeled by a small set of closely related kernel languages, this approach allows programmer and student to grasp the underlying unity of programming. The book has many program fragments and exercises, all of which can be run on the Mozart Programming System, an Open Source software package that features an interactive incremental development environment.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9780262220699"},{"type":"ISBN_10","identifier":"0262220695"}],"readingModes":{"text":false,"image":true},"pageCount":931,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.1.0.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=gL34DwAAQBAJ&printsec=frontcover&dq=programing&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=gL34DwAAQBAJ&dq=programing&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Concepts_Techniques_and_Models_of_Comput.html?hl=&id=gL34DwAAQBAJ"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Concepts_Techniques_and_Models_of_Comput-sample-pdf.acsm?id=gL34DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=gL34DwAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"This innovative text presents computer programming as a unified discipline in a way that is both practical and scientifically sound."}

class BooksModel {
  BooksModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  BooksModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  String kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;
  SaleInfo saleInfo;
  AccessInfo accessInfo;
  SearchInfo searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo.toJson();
    }
    return map;
  }
}

/// textSnippet : "This innovative text presents computer programming as a unified discipline in a way that is both practical and scientifically sound."

class SearchInfo {
  SearchInfo({
    this.textSnippet,
  });

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }

  String textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }
}

/// country : "EG"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":false}
/// pdf : {"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Concepts_Techniques_and_Models_of_Comput-sample-pdf.acsm?id=gL34DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=gL34DwAAQBAJ&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false

class AccessInfo {
  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  String country;
  String viewability;
  bool embeddable;
  bool publicDomain;
  String textToSpeechPermission;
  Epub epub;
  Pdf pdf;
  String webReaderLink;
  String accessViewStatus;
  bool quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }
}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com.eg/books/download/Concepts_Techniques_and_Models_of_Comput-sample-pdf.acsm?id=gL34DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

class Pdf {
  Pdf({
    this.isAvailable,
    this.acsTokenLink,
  });

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }

  bool isAvailable;
  String acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }
}

/// isAvailable : false

class Epub {
  Epub({
    this.isAvailable,
  });

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }

  bool isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }
}

/// country : "EG"
/// saleability : "NOT_FOR_SALE"
/// isEbook : false

class SaleInfo {
  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }

  String country;
  String saleability;
  bool isEbook;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    return map;
  }
}

/// title : "Concepts, Techniques, and Models of Computer Programming"
/// authors : ["Peter Van Roy","Seif Haridi"]
/// publisher : "MIT Press"
/// publishedDate : "2004-02-20"
/// description : "Teaching the science and the technology of programming as a unified discipline that shows the deep relationships between programming paradigms. This innovative text presents computer programming as a unified discipline in a way that is both practical and scientifically sound. The book focuses on techniques of lasting value and explains them precisely in terms of a simple abstract machine. The book presents all major programming paradigms in a uniform framework that shows their deep relationships and how and where to use them together. After an introduction to programming concepts, the book presents both well-known and lesser-known computation models (\"programming paradigms\"). Each model has its own set of techniques and each is included on the basis of its usefulness in practice. The general models include declarative programming, declarative concurrency, message-passing concurrency, explicit state, object-oriented programming, shared-state concurrency, and relational programming. Specialized models include graphical user interface programming, distributed programming, and constraint programming. Each model is based on its kernel language—a simple core language that consists of a small number of programmer-significant elements. The kernel languages are introduced progressively, adding concepts one by one, thus showing the deep relationships between different models. The kernel languages are defined precisely in terms of a simple abstract machine. Because a wide variety of languages and programming paradigms can be modeled by a small set of closely related kernel languages, this approach allows programmer and student to grasp the underlying unity of programming. The book has many program fragments and exercises, all of which can be run on the Mozart Programming System, an Open Source software package that features an interactive incremental development environment."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9780262220699"},{"type":"ISBN_10","identifier":"0262220695"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 931
/// printType : "BOOK"
/// categories : ["Computers"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.1.0.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=gL34DwAAQBAJ&printsec=frontcover&dq=programing&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=gL34DwAAQBAJ&dq=programing&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Concepts_Techniques_and_Models_of_Comput.html?hl=&id=gL34DwAAQBAJ"

class VolumeInfo {
  VolumeInfo({
    this.title,
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
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  String title;
  List<String> authors;
  String publisher;
  String publishedDate;
  String description;
  List<IndustryIdentifiers> industryIdentifiers;
  ReadingModes readingModes;
  num pageCount;
  String printType;
  List<String> categories;
  String maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  String language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] =
          industryIdentifiers.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }
}

/// smallThumbnail : "http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

class ImageLinks {
  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  String smallThumbnail;
  String thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }
}

/// containsEpubBubbles : false
/// containsImageBubbles : false

class PanelizationSummary {
  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }

  bool containsEpubBubbles;
  bool containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }
}

/// text : false
/// image : true

class ReadingModes {
  ReadingModes({
    this.text,
    this.image,
  });

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }

  bool text;
  bool image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }
}

/// type : "ISBN_13"
/// identifier : "9780262220699"

class IndustryIdentifiers {
  IndustryIdentifiers({
    this.type,
    this.identifier,
  });

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }

  String type;
  String identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }
}
