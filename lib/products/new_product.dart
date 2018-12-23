import 'package:flutter_woocommerce/products/products_model.dart';

class NewProduct {
  Products products;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'permalink': permalink,
        'date_created': date_created,
        'date_created_gmt': date_created_gmt,
        'date_modified': date_modified,
        'date_modified_gmt': date_modified_gmt,
        'type': type,
        'status': status,
        'featured': featured,
        'catalog_visibility': catalog_visibility,
        'description': description,
        'short_description': short_description,
        'sku': sku,
        'price': price,
        'regular_price': regular_price,
        'sale_price': sale_price,
        'date_on_sale_from': date_on_sale_from,
        'date_on_sale_from_gmt': date_on_sale_from_gmt,
        'date_on_sale_to': date_on_sale_to,
        'date_on_sale_to_gmt': date_on_sale_to_gmt,
        'price_html': price_html,
        'on_sale': on_sale,
        'purchasable': purchasable,
        'total_sales': total_sales,
        'virtual': virtual,
        'downloadable': downloadable,
        'downloads': downloads,
        'download_limit': download_limit,
        'download_expiry': download_expiry,
        'external_url': external_url,
        'button_text': button_text,
        'tax_status': tax_status,
        'tax_class': tax_class,
        'manage_stock': manage_stock,
        'stock_quantity': stock_quantity,
        'stock_status': stock_status,
        'backorders': backorders,
        'backorders_allowed': backorders_allowed,
        'backordered': backordered,
        'sold_individually': sold_individually,
        'weight': weight,
        'dimensions': dimensions,
        'shipping_required': shipping_required,
        'shipping_taxable': shipping_taxable,
        'shipping_class': shipping_class,
        'shipping_class_id': shipping_class_id,
        'reviews_allowed': reviews_allowed,
        'average_rating': average_rating,
        'rating_count': rating_count,
        'related_ids': related_ids,
        'upsell_ids': upsell_ids,
        'cross_sell_ids': cross_sell_ids,
        'parent_id': parent_id,
        'purchase_note': purchase_note,
        'categories': categories,
        'tags': tags,
        'images': images,
        'attributes': attributes,
        'default_attributes': default_attributes,
        'variations': variations,
        'grouped_products': grouped_products,
        'menu_order': menu_order,
        'meta_data': meta_data,
        '_links': links,
      };

  Map<String, dynamic> get items {
    return _items;
  }

  set items(Map<String, dynamic> value) {
    _items = value;
  }

  Map<dynamic, dynamic> _items;
  int _id;
  String _name;
  String _slug;
  String _permalink;
  String _date_created;
  String _date_created_gmt;
  String _date_modified;
  String _date_modified_gmt;
  String _type;
  String _status;
  bool _featured;
  String _catalog_visibility;
  String _description;
  String _short_description;
  String _sku;
  String _price;
  String _regular_price;
  String _sale_price;
  String _date_on_sale_from;
  String _date_on_sale_from_gmt;
  String _date_on_sale_to;
  String _date_on_sale_to_gmt;
  String _price_html;
  bool _on_sale;
  bool _purchasable;
  int _total_sales;
  bool _virtual;
  bool _downloadable;
  List _downloads;
  int _download_limit;
  int _download_expiry;
  String _external_url;
  String _button_text;
  String _tax_status;
  String _tax_class;
  bool _manage_stock;
  String _stock_quantity;
  String _stock_status;
  String _backorders;
  bool _backorders_allowed;
  bool _backordered;
  bool _sold_individually;
  String _weight;
  Map _dimensions;
  bool _shipping_required;
  bool _shipping_taxable;
  String _shipping_class;
  int _shipping_class_id;
  bool _reviews_allowed;
  String _average_rating; //TODO
  int _rating_count;
  List _related_ids;
  List _upsell_ids;
  List _cross_sell_ids;
  int _parent_id;
  String _purchase_note;
  List _categories;
  List _tags;
  List _images;
  List _attributes;
  List _default_attributes;
  List _variations;
  List _grouped_products;
  int _menu_order;
  List _meta_data;
  Map _links;

  ///Get Unique identifier for the resource.
  ///READ-ONLY
  int get id => _id;

  set id(int value) {
    _id = value;
    _items[_id] = value;
  }

  ///Get Product name
  String get name => _name;

  set name(String value) {
    _name = value;
  }

  ///Product slug.
  String get slug => _slug;

  set slug(String value) {
    _slug = value;
  }

  ///Product URL
  /// READ-ONLY
  String get permalink => _permalink;

  set permalink(String value) {
    _permalink = value;
  }

  ///The date the product was created, in the site's timezone
  ///READ-ONLY
  String get date_created => _date_created;

  set date_created(String value) {
    _date_created = value;
  }

  ///The date the product was created, as GMT.
  ///READ-ONLY
  String get date_created_gmt => _date_created_gmt;

  set date_created_gmt(String value) {
    _date_created_gmt = value;
  }

  ///The date the product was last modified, in the site's timezone.
  ///READ-ONLY
  String get date_modified => _date_modified;

  set date_modified(String value) {
    _date_modified = value;
  }

  ///The date the product was last modified, as GMT.
  ///READ-ONLY
  String get date_modified_gmt => _date_modified_gmt;

  set date_modified_gmt(String value) {
    _date_modified_gmt = value;
  }

  ///Product type. Options: simple, grouped,
  /// external and variable. Default is simple.
  String get type => _type;

  set type(String value) {
    _type = value;
  }

  ///Product status (post status).
  /// Options: draft, pending, private and publish.
  /// Default is publish.
  String get status => _status;

  set status(String value) {
    _status = value;
  }

  ///Featured product. Default is false.
  bool get featured => _featured;

  set featured(bool value) {
    _featured = value;
  }

  ///Catalog visibility. Options: visible,
  /// catalog, search and hidden. Default is visible.
  String get catalog_visibility => _catalog_visibility;

  set catalog_visibility(String value) {
    _catalog_visibility = value;
  }

  ///Product description.
  String get description => _description;

  set description(String value) {
    _description = value;
  }

  ///Product short description.
  String get short_description => _short_description;

  set short_description(String value) {
    _short_description = value;
  }

  ///Unique identifier
  String get sku => _sku;

  set sku(String value) {
    _sku = value;
  }

  ///Current product price
  ///READ-ONLY
  String get price => _price;

  set price(String value) {
    _price = value;
  }

  ///Regular product price
  String get regular_price => _regular_price;

  set regular_price(String value) {
    _regular_price = value;
  }

  ///Product sale price
  String get sale_price => _sale_price;

  set sale_price(String value) {
    _sale_price = value;
  }

  ///Start date of sale price, in the site's timezone
  String get date_on_sale_from => _date_on_sale_from;

  set date_on_sale_from(String value) {
    _date_on_sale_from = value;
  }

  ///Start date of sale price, as GMT.
  String get date_on_sale_from_gmt => _date_on_sale_from_gmt;

  set date_on_sale_from_gmt(String value) {
    _date_on_sale_from_gmt = value;
  }

  ///End date of sale price, in the site's timezone.
  String get date_on_sale_to => _date_on_sale_to;

  set date_on_sale_to(String value) {
    _date_on_sale_to = value;
  }

  ///End date of sale price, as GMT.
  String get date_on_sale_to_gmt => _date_on_sale_to_gmt;

  set date_on_sale_to_gmt(String value) {
    _date_on_sale_to_gmt = value;
  }

  ///Price formatted in HTML.
  ///READ-ONLY
  String get price_html => _price_html;

  set price_html(String value) {
    _price_html = value;
  }

  ///Shows if the product is on sale.
  ///READ-ONLY
  bool get on_sale => _on_sale;

  set on_sale(bool value) {
    _on_sale = value;
  }

  ///Shows if the product can be bought.
  ///READ-ONLY
  bool get purchasable => _purchasable;

  set purchasable(bool value) {
    _purchasable = value;
  }

  ///Amount of sales.
  ///READ-ONLY
  int get total_sales => _total_sales;

  set total_sales(int value) {
    _total_sales = value;
  }

  ///If the product is virtual. Default is false.
  bool get virtual => _virtual;

  set virtual(bool value) {
    _virtual = value;
  }

  ///If the product is downloadable. [_downloadable]Default is false.
  bool get downloadable => _downloadable;

  set downloadable(bool value) {
    _downloadable = value;
  }

  ///List of downloadable files.
  ///See Product - Downloads properties
  List get downloads => _downloads;

  set downloads(List value) {
    _downloads = value;
  }

  ///Number of times downloadable files can be downloaded
  /// after purchase. Default is -1.
  int get download_limit => _download_limit;

  set download_limit(int value) {
    _download_limit = value;
  }

  ///Number of days until access to downloadable files expires. Default is -1.
  int get download_expiry => _download_expiry;

  set download_expiry(int value) {
    _download_expiry = value;
  }

  ///Product external URL. Only for external products.
  String get external_url => _external_url;

  set external_url(String value) {
    _external_url = value;
  }

  ///Product external button text. Only for external products.
  String get button_text => _button_text;

  set button_text(String value) {
    _button_text = value;
  }

  ///Tax status. Options: taxable, shipping and none. Default is taxable.
  String get tax_status => _tax_status;

  set tax_status(String value) {
    _tax_status = value;
  }

  ///Tax class.
  String get tax_class => _tax_class;

  set tax_class(String value) {
    _tax_class = value;
  }

  ///Stock management at product level.[_manage_stock] Default is false.
  bool get manage_stock => _manage_stock;

  set manage_stock(bool value) {
    _manage_stock = value;
  }

  ///Stock quantity.
  String get stock_quantity => _stock_quantity;

  set stock_quantity(String value) {
    _stock_quantity = value;
  }

  ///Controls the stock status of the product. Options: instock, outofstock, onbackorder. Default is instock.
  String get stock_status => _stock_status;

  set stock_status(String value) {
    _stock_status = value;
  }

  ///If managing stock, this controls if backorders are allowed. Options: no, notify and yes. Default is no.
  String get backorders => _backorders;

  set backorders(String value) {
    _backorders = value;
  }

  ///Shows if backorders are allowed.
  /// READ-ONLY
  bool get backorders_allowed => _backorders_allowed;

  set backorders_allowed(bool value) {
    _backorders_allowed = value;
  }

  ///Shows if the product is on backordered.
  /// READ-ONLY
  bool get backordered => _backordered;

  set backordered(bool value) {
    _backordered = value;
  }

  ///Allow one item to be bought in a single order.[_sold_individually] Default is false.
  bool get sold_individually => _sold_individually;

  set sold_individually(bool value) {
    _sold_individually = value;
  }

  ///Product weight.
  String get weight => _weight;

  set weight(String value) {
    _weight = value;
  }

  ///Product dimensions. See Product - Dimensions properties
  Map get dimensions => _dimensions;

  set dimensions(Map value) {
    _dimensions = value;
  }

  ///Shows if the product need to be shipped.
  /// READ-ONLY
  bool get shipping_required => _shipping_required;

  set shipping_required(bool value) {
    _shipping_required = value;
  }

  ///Shows whether or not the product shipping is taxable.
  /// READ-ONLY
  bool get shipping_taxable => _shipping_taxable;

  set shipping_taxable(bool value) {
    _shipping_taxable = value;
  }

  ///Shipping class slug.
  String get shipping_class => _shipping_class;

  set shipping_class(String value) {
    _shipping_class = value;
  }

  ///Shipping class ID.
  ///READ-ONLY
  int get shipping_class_id => _shipping_class_id;

  set shipping_class_id(int value) {
    _shipping_class_id = value;
  }

  ///Allow reviews. Default is true.
  bool get reviews_allowed => _reviews_allowed;

  set reviews_allowed(bool value) {
    _reviews_allowed = value;
  }

  ///Reviews average rating.
  ///READ-ONLY
  String get average_rating => _average_rating;

  set average_rating(String value) {
    _average_rating = value;
  }

  ///Amount of reviews that the product have.
  int get rating_count => _rating_count;

  set rating_count(int value) {
    _rating_count = value;
  }

  ///List of related products IDs.
  ///READ-ONLY
  List get related_ids => _related_ids;

  set related_ids(List value) {
    _related_ids = value;
  }

  ///List of up-sell products IDs.
  List get upsell_ids => _upsell_ids;

  set upsell_ids(List value) {
    _upsell_ids = value;
  }

  ///List of cross-sell products IDs.
  List get cross_sell_ids => _cross_sell_ids;

  set cross_sell_ids(List value) {
    _cross_sell_ids = value;
  }

  ///Product parent ID.
  int get parent_id => _parent_id;

  set parent_id(int value) {
    _parent_id = value;
  }

  ///Optional note to send the customer after purchase.
  String get purchase_note => _purchase_note;

  set purchase_note(String value) {
    _purchase_note = value;
  }

  ///List of categories. See Product - Categories properties
  List get categories => _categories;

  set categories(List value) {
    _categories = value;
  }

  ///List of tags. See Product - Tags properties
  List get tags => _tags;

  set tags(List value) {
    _tags = value;
  }

  ///List of images. See Product - Images properties
  List get images => _images;

  set images(List value) {
    _images = value;
  }

  ///List of attributes. See Product - Attributes properties
  List get attributes => _attributes;

  set attributes(List value) {
    _attributes = value;
  }

  ///Defaults variation attributes. See Product - Default attributes properties
  List get default_attributes => _default_attributes;

  set default_attributes(List value) {
    _default_attributes = value;
  }

  ///List of variations IDs.[READ-ONLY]
  List get variations => _variations;

  set variations(List value) {
    _variations = value;
  }

  ///List of grouped products ID.
  List get grouped_products => _grouped_products;

  set grouped_products(List value) {
    _grouped_products = value;
  }

  ///List of grouped products ID.
  int get menu_order => _menu_order;

  set menu_order(int value) {
    _menu_order = value;
  }

  ///Menu order, used to custom sort products.
  List get meta_data => _meta_data;

  set meta_data(List value) {
    _meta_data = value;
  }

  ///Meta data. See Product - Meta data properties
  Map get links => _links;

  set links(Map value) {
    _links = value;
  }
}
