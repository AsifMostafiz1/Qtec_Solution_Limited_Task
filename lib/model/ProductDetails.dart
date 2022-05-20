
class ProductDetails {
  ProductDetails({
      String? status, 
      int? statusCode, 
      Data? data, 
      String? error,}){
    _status = status;
    _statusCode = statusCode;
    _data = data;
    _error = error;
}

  ProductDetails.fromJson(dynamic json) {
    _status = json['status'];
    _statusCode = json['statusCode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _error = json['error'];
  }
  String? _status;
  int? _statusCode;
  Data? _data;
  String? _error;
ProductDetails copyWith({  String? status,
  int? statusCode,
  Data? data,
  String? error,
}) => ProductDetails(  status: status ?? _status,
  statusCode: statusCode ?? _statusCode,
  data: data ?? _data,
  error: error ?? _error,
);
  String? get status => _status;
  int? get statusCode => _statusCode;
  Data? get data => _data;
  String? get error => _error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['statusCode'] = _statusCode;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['error'] = _error;
    return map;
  }

}

class Data {
  Data({
      int? id, 
      Brand? brand, 
      String? image, 
      Charge? charge, 
      List<Images>? images, 
      String? slug, 
      String? productName, 
      String? model, 
      String? commissionType, 
      String? amount, 
      String? tag, 
      String? description, 
      String? note, 
      String? embaddedVideoLink, 
      int? maximumOrder, 
      int? stock, 
      bool? isBackOrder, 
      String? specification, 
      String? warranty, 
      bool? preOrder, 
      int? productReview, 
      bool? isSeller, 
      bool? isPhone, 
      bool? willShowEmi, 
      dynamic badge, 
      bool? isActive, 
      String? createdAt, 
      String? updatedAt, 
      dynamic language, 
      String? seller, 
      dynamic combo, 
      String? createdBy, 
      dynamic updatedBy, 
      List<int>? category, 
      List<dynamic>? relatedProduct, 
      List<dynamic>? filterValue,}){
    _id = id;
    _brand = brand;
    _image = image;
    _charge = charge;
    _images = images;
    _slug = slug;
    _productName = productName;
    _model = model;
    _commissionType = commissionType;
    _amount = amount;
    _tag = tag;
    _description = description;
    _note = note;
    _embaddedVideoLink = embaddedVideoLink;
    _maximumOrder = maximumOrder;
    _stock = stock;
    _isBackOrder = isBackOrder;
    _specification = specification;
    _warranty = warranty;
    _preOrder = preOrder;
    _productReview = productReview;
    _isSeller = isSeller;
    _isPhone = isPhone;
    _willShowEmi = willShowEmi;
    _badge = badge;
    _isActive = isActive;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _language = language;
    _seller = seller;
    _combo = combo;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _category = category;
    _relatedProduct = relatedProduct;
    _filterValue = filterValue;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    _image = json['image'];
    _charge = json['charge'] != null ? Charge.fromJson(json['charge']) : null;
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    _slug = json['slug'];
    _productName = json['product_name'];
    _model = json['model'];
    _commissionType = json['commission_type'];
    _amount = json['amount'];
    _tag = json['tag'];
    _description = json['description'];
    _note = json['note'];
    _embaddedVideoLink = json['embadded_video_link'];
    _maximumOrder = json['maximum_order'];
    _stock = json['stock'];
    _isBackOrder = json['is_back_order'];
    _specification = json['specification'];
    _warranty = json['warranty'];
    _preOrder = json['pre_order'];
    _productReview = json['product_review'];
    _isSeller = json['is_seller'];
    _isPhone = json['is_phone'];
    _willShowEmi = json['will_show_emi'];
    _badge = json['badge'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _language = json['language'];
    _seller = json['seller'];
    _combo = json['combo'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _category = json['category'] != null ? json['category'].cast<int>() : [];
    // if (json['related_product'] != null) {
    //   _relatedProduct = [];
    //   json['related_product'].forEach((v) {
    //     _relatedProduct?.add(Dynamic.fromJson(v));
    //   });
    // }
    // if (json['filter_value'] != null) {
    //   _filterValue = [];
    //   json['filter_value'].forEach((v) {
    //     _filterValue?.add(Dynamic.fromJson(v));
    //   });
    // }
  }
  int? _id;
  Brand? _brand;
  String? _image;
  Charge? _charge;
  List<Images>? _images;
  String? _slug;
  String? _productName;
  String? _model;
  String? _commissionType;
  String? _amount;
  String? _tag;
  String? _description;
  String? _note;
  String? _embaddedVideoLink;
  int? _maximumOrder;
  int? _stock;
  bool? _isBackOrder;
  String? _specification;
  String? _warranty;
  bool? _preOrder;
  int? _productReview;
  bool? _isSeller;
  bool? _isPhone;
  bool? _willShowEmi;
  dynamic _badge;
  bool? _isActive;
  String? _createdAt;
  String? _updatedAt;
  dynamic _language;
  String? _seller;
  dynamic _combo;
  String? _createdBy;
  dynamic _updatedBy;
  List<int>? _category;
  List<dynamic>? _relatedProduct;
  List<dynamic>? _filterValue;
Data copyWith({  int? id,
  Brand? brand,
  String? image,
  Charge? charge,
  List<Images>? images,
  String? slug,
  String? productName,
  String? model,
  String? commissionType,
  String? amount,
  String? tag,
  String? description,
  String? note,
  String? embaddedVideoLink,
  int? maximumOrder,
  int? stock,
  bool? isBackOrder,
  String? specification,
  String? warranty,
  bool? preOrder,
  int? productReview,
  bool? isSeller,
  bool? isPhone,
  bool? willShowEmi,
  dynamic badge,
  bool? isActive,
  String? createdAt,
  String? updatedAt,
  dynamic language,
  String? seller,
  dynamic combo,
  String? createdBy,
  dynamic updatedBy,
  List<int>? category,
  List<dynamic>? relatedProduct,
  List<dynamic>? filterValue,
}) => Data(  id: id ?? _id,
  brand: brand ?? _brand,
  image: image ?? _image,
  charge: charge ?? _charge,
  images: images ?? _images,
  slug: slug ?? _slug,
  productName: productName ?? _productName,
  model: model ?? _model,
  commissionType: commissionType ?? _commissionType,
  amount: amount ?? _amount,
  tag: tag ?? _tag,
  description: description ?? _description,
  note: note ?? _note,
  embaddedVideoLink: embaddedVideoLink ?? _embaddedVideoLink,
  maximumOrder: maximumOrder ?? _maximumOrder,
  stock: stock ?? _stock,
  isBackOrder: isBackOrder ?? _isBackOrder,
  specification: specification ?? _specification,
  warranty: warranty ?? _warranty,
  preOrder: preOrder ?? _preOrder,
  productReview: productReview ?? _productReview,
  isSeller: isSeller ?? _isSeller,
  isPhone: isPhone ?? _isPhone,
  willShowEmi: willShowEmi ?? _willShowEmi,
  badge: badge ?? _badge,
  isActive: isActive ?? _isActive,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  language: language ?? _language,
  seller: seller ?? _seller,
  combo: combo ?? _combo,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  category: category ?? _category,
  relatedProduct: relatedProduct ?? _relatedProduct,
  filterValue: filterValue ?? _filterValue,
);
  int? get id => _id;
  Brand? get brand => _brand;
  String? get image => _image;
  Charge? get charge => _charge;
  List<Images>? get images => _images;
  String? get slug => _slug;
  String? get productName => _productName;
  String? get model => _model;
  String? get commissionType => _commissionType;
  String? get amount => _amount;
  String? get tag => _tag;
  String? get description => _description;
  String? get note => _note;
  String? get embaddedVideoLink => _embaddedVideoLink;
  int? get maximumOrder => _maximumOrder;
  int? get stock => _stock;
  bool? get isBackOrder => _isBackOrder;
  String? get specification => _specification;
  String? get warranty => _warranty;
  bool? get preOrder => _preOrder;
  int? get productReview => _productReview;
  bool? get isSeller => _isSeller;
  bool? get isPhone => _isPhone;
  bool? get willShowEmi => _willShowEmi;
  dynamic get badge => _badge;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get language => _language;
  String? get seller => _seller;
  dynamic get combo => _combo;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;
  List<int>? get category => _category;
  List<dynamic>? get relatedProduct => _relatedProduct;
  List<dynamic>? get filterValue => _filterValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    map['image'] = _image;
    if (_charge != null) {
      map['charge'] = _charge?.toJson();
    }
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    map['slug'] = _slug;
    map['product_name'] = _productName;
    map['model'] = _model;
    map['commission_type'] = _commissionType;
    map['amount'] = _amount;
    map['tag'] = _tag;
    map['description'] = _description;
    map['note'] = _note;
    map['embadded_video_link'] = _embaddedVideoLink;
    map['maximum_order'] = _maximumOrder;
    map['stock'] = _stock;
    map['is_back_order'] = _isBackOrder;
    map['specification'] = _specification;
    map['warranty'] = _warranty;
    map['pre_order'] = _preOrder;
    map['product_review'] = _productReview;
    map['is_seller'] = _isSeller;
    map['is_phone'] = _isPhone;
    map['will_show_emi'] = _willShowEmi;
    map['badge'] = _badge;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['language'] = _language;
    map['seller'] = _seller;
    map['combo'] = _combo;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['category'] = _category;
    if (_relatedProduct != null) {
      map['related_product'] = _relatedProduct?.map((v) => v.toJson()).toList();
    }
    if (_filterValue != null) {
      map['filter_value'] = _filterValue?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Images {
  Images({
      int? id, 
      String? image, 
      bool? isPrimary, 
      int? product,}){
    _id = id;
    _image = image;
    _isPrimary = isPrimary;
    _product = product;
}

  Images.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _isPrimary = json['is_primary'];
    _product = json['product'];
  }
  int? _id;
  String? _image;
  bool? _isPrimary;
  int? _product;
Images copyWith({  int? id,
  String? image,
  bool? isPrimary,
  int? product,
}) => Images(  id: id ?? _id,
  image: image ?? _image,
  isPrimary: isPrimary ?? _isPrimary,
  product: product ?? _product,
);
  int? get id => _id;
  String? get image => _image;
  bool? get isPrimary => _isPrimary;
  int? get product => _product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['image'] = _image;
    map['is_primary'] = _isPrimary;
    map['product'] = _product;
    return map;
  }

}

class Charge {
  Charge({
      double? bookingPrice, 
      double? currentCharge, 
      dynamic discountCharge, 
      double? sellingPrice, 
      double? profit, 
      bool? isEvent, 
      dynamic eventId, 
      bool? highlight, 
      dynamic highlightId, 
      bool? groupping, 
      dynamic grouppingId, 
      dynamic campaignSectionId, 
      bool? campaignSection, 
      dynamic message,}){
    _bookingPrice = bookingPrice;
    _currentCharge = currentCharge;
    _discountCharge = discountCharge;
    _sellingPrice = sellingPrice;
    _profit = profit;
    _isEvent = isEvent;
    _eventId = eventId;
    _highlight = highlight;
    _highlightId = highlightId;
    _groupping = groupping;
    _grouppingId = grouppingId;
    _campaignSectionId = campaignSectionId;
    _campaignSection = campaignSection;
    _message = message;
}

  Charge.fromJson(dynamic json) {
    _bookingPrice = json['booking_price'];
    _currentCharge = json['current_charge'];
    _discountCharge = json['discount_charge'];
    _sellingPrice = json['selling_price'];
    _profit = json['profit'];
    _isEvent = json['is_event'];
    _eventId = json['event_id'];
    _highlight = json['highlight'];
    _highlightId = json['highlight_id'];
    _groupping = json['groupping'];
    _grouppingId = json['groupping_id'];
    _campaignSectionId = json['campaign_section_id'];
    _campaignSection = json['campaign_section'];
    _message = json['message'];
  }
  double? _bookingPrice;
  double? _currentCharge;
  dynamic _discountCharge;
  double? _sellingPrice;
  double? _profit;
  bool? _isEvent;
  dynamic _eventId;
  bool? _highlight;
  dynamic _highlightId;
  bool? _groupping;
  dynamic _grouppingId;
  dynamic _campaignSectionId;
  bool? _campaignSection;
  dynamic _message;
Charge copyWith({  double? bookingPrice,
  double? currentCharge,
  dynamic discountCharge,
  double? sellingPrice,
  double? profit,
  bool? isEvent,
  dynamic eventId,
  bool? highlight,
  dynamic highlightId,
  bool? groupping,
  dynamic grouppingId,
  dynamic campaignSectionId,
  bool? campaignSection,
  dynamic message,
}) => Charge(  bookingPrice: bookingPrice ?? _bookingPrice,
  currentCharge: currentCharge ?? _currentCharge,
  discountCharge: discountCharge ?? _discountCharge,
  sellingPrice: sellingPrice ?? _sellingPrice,
  profit: profit ?? _profit,
  isEvent: isEvent ?? _isEvent,
  eventId: eventId ?? _eventId,
  highlight: highlight ?? _highlight,
  highlightId: highlightId ?? _highlightId,
  groupping: groupping ?? _groupping,
  grouppingId: grouppingId ?? _grouppingId,
  campaignSectionId: campaignSectionId ?? _campaignSectionId,
  campaignSection: campaignSection ?? _campaignSection,
  message: message ?? _message,
);
  double? get bookingPrice => _bookingPrice;
  double? get currentCharge => _currentCharge;
  dynamic get discountCharge => _discountCharge;
  double? get sellingPrice => _sellingPrice;
  double? get profit => _profit;
  bool? get isEvent => _isEvent;
  dynamic get eventId => _eventId;
  bool? get highlight => _highlight;
  dynamic get highlightId => _highlightId;
  bool? get groupping => _groupping;
  dynamic get grouppingId => _grouppingId;
  dynamic get campaignSectionId => _campaignSectionId;
  bool? get campaignSection => _campaignSection;
  dynamic get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['booking_price'] = _bookingPrice;
    map['current_charge'] = _currentCharge;
    map['discount_charge'] = _discountCharge;
    map['selling_price'] = _sellingPrice;
    map['profit'] = _profit;
    map['is_event'] = _isEvent;
    map['event_id'] = _eventId;
    map['highlight'] = _highlight;
    map['highlight_id'] = _highlightId;
    map['groupping'] = _groupping;
    map['groupping_id'] = _grouppingId;
    map['campaign_section_id'] = _campaignSectionId;
    map['campaign_section'] = _campaignSection;
    map['message'] = _message;
    return map;
  }

}

class Brand {
  Brand({
      String? name, 
      String? image, 
      dynamic headerImage, 
      String? slug,}){
    _name = name;
    _image = image;
    _headerImage = headerImage;
    _slug = slug;
}

  Brand.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _headerImage = json['header_image'];
    _slug = json['slug'];
  }
  String? _name;
  String? _image;
  dynamic _headerImage;
  String? _slug;
Brand copyWith({  String? name,
  String? image,
  dynamic headerImage,
  String? slug,
}) => Brand(  name: name ?? _name,
  image: image ?? _image,
  headerImage: headerImage ?? _headerImage,
  slug: slug ?? _slug,
);
  String? get name => _name;
  String? get image => _image;
  dynamic get headerImage => _headerImage;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['header_image'] = _headerImage;
    map['slug'] = _slug;
    return map;
  }

}