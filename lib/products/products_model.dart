import 'package:meta/meta.dart';

class Products {
  int id;
  String name;
  String slug;
  String permalink;
  String date_created;
  String date_created_gmt;
  String date_modified;
  String date_modified_gmt;
  String type;
  String status;
  bool featured;
  String catalog_visibility;
  String description;
  String short_description;
  String sku;
  String price;
  String regular_price;
  String sale_price;
  String date_on_sale_from;
  String date_on_sale_from_gmt;
  String date_on_sale_to;
  String date_on_sale_to_gmt;
  String price_html;
  bool on_sale;
  bool purchasable;
  int total_sales;
  bool virtual;
  bool downloadable;
  List downloads;
  int download_limit;
  int download_expiry;
  String external_url;
  String button_text;
  String tax_status;
  String tax_class;
  bool manage_stock;
  String stock_quantity;
  String stock_status;
  String backorders;
  bool backorders_allowed;
  bool backordered;
  bool sold_individually;
  String weight;
  Map dimensions;
  bool shipping_required;
  bool shipping_taxable;
  String shipping_class;
  int shipping_class_id;
  bool reviews_allowed;
  String average_rating; //TODO
  int rating_count;
  List related_ids;
  List upsell_ids;
  List cross_sell_ids;
  int parent_id;
  String purchase_note;
  List categories;
  List tags;
  List images;
  List attributes;
  List default_attributes;
  List variations;
  List grouped_products;
  int menu_order;
  List meta_data;
  Map links;

  Products({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.date_created,
    this.date_created_gmt,
    this.date_modified,
    this.date_modified_gmt,
    this.type,
    this.status,
    this.featured,
    this.catalog_visibility,
    this.description,
    this.short_description,
    this.sku,
    this.price,
    this.regular_price,
    this.sale_price,
    this.date_on_sale_from,
    this.date_on_sale_from_gmt,
    this.date_on_sale_to,
    this.date_on_sale_to_gmt,
    this.price_html,
    this.on_sale,
    this.purchasable,
    this.total_sales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.download_limit,
    this.download_expiry,
    this.external_url,
    this.button_text,
    this.tax_status,
    this.tax_class,
    this.manage_stock,
    this.stock_quantity,
    this.stock_status,
    this.backorders,
    this.backorders_allowed,
    this.backordered,
    this.sold_individually,
    this.weight,
    this.dimensions,
    this.shipping_required,
    this.shipping_taxable,
    this.shipping_class,
    this.shipping_class_id,
    this.reviews_allowed,
    this.average_rating,
    this.rating_count,
    this.related_ids,
    this.upsell_ids,
    this.cross_sell_ids,
    this.parent_id,
    this.purchase_note,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.default_attributes,
    this.variations,
    this.grouped_products,
    this.menu_order,
    this.meta_data,
    this.links,
  });

  Products.simpleProduct({
    @required this.name,
    this.type = "simple",
    @required this.description,
    @required this.short_description,
    @required this.regular_price,
    @required this.categories,
    @required this.images,
  });

  Products.variableProduct({
    @required this.name,
    this.type = "variable",
    @required this.description,
    @required this.short_description,
    @required this.regular_price,
    @required this.categories,
    @required this.images,
    @required this.attributes,
    @required this.default_attributes,
  });

  static Products fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      permalink: json['permalink'],
      date_created: json['date_created'],
      date_created_gmt: json['date_created_gmt'],
      date_modified: json['date_modified'],
      date_modified_gmt: json['date_modified_gmt'],
      type: json['type'],
      status: json['status'],
      featured: json['featured'],
      catalog_visibility: json['catalog_visibility'],
      description: json['description'],
      short_description: json['short_description'],
      sku: json['sku'],
      price: json['price'],
      regular_price: json['regular_price'],
      sale_price: json['sale_price'],
      date_on_sale_from: json['date_on_sale_from'],
      date_on_sale_from_gmt: json['date_on_sale_from_gmt'],
      date_on_sale_to: json['date_on_sale_to'],
      date_on_sale_to_gmt: json['date_on_sale_to_gmt'],
      price_html: json['price_html'],
      on_sale: json['on_sale'],
      purchasable: json['purchasable'],
      total_sales: json['total_sales'],
      virtual: json['virtual'],
      downloadable: json['downloadable'],
      downloads: json['downloads'],
      download_limit: json['download_limit'],
      download_expiry: json['download_expiry'],
      external_url: json['external_url'],
      button_text: json['button_text'],
      tax_status: json['tax_status'],
      tax_class: json['tax_class'],
      manage_stock: json['manage_stock'],
      stock_quantity: json['stock_quantity'],
      stock_status: json['stock_status'],
      backorders: json['backorders'],
      backorders_allowed: json['backorders_allowed'],
      backordered: json['backordered'],
      sold_individually: json['sold_individually'],
      weight: json['weight'],
      dimensions: json['dimensions'],
      shipping_required: json['shipping_required'],
      shipping_taxable: json['shipping_taxable'],
      shipping_class: json['shipping_class'],
      shipping_class_id: json['shipping_class_id'],
      reviews_allowed: json['reviews_allowed'],
      average_rating: json['average_rating'],
      rating_count: json['rating_count'],
      related_ids: json['related_ids'],
      upsell_ids: json['upsell_ids'],
      cross_sell_ids: json['cross_sell_ids'],
      parent_id: json['parent_id'],
      purchase_note: json['purchase_note'],
      categories: json['categories'],
      tags: json['tags'],
      images: json['images'],
      attributes: json['attributes'],
      default_attributes: json['default_attributes'],
      variations: json['variations'],
      grouped_products: json['grouped_products'],
      menu_order: json['menu_order'],
      meta_data: json['meta_data'],
      links: json['_links'],
    );
  }

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
}
