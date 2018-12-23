import 'dart:convert';

import 'package:flutter_woocommerce/api/woocommerce_config.dart';
import 'package:flutter_woocommerce/products/product_properties.dart';
import 'package:flutter_woocommerce/products/products_model.dart';
import 'package:meta/meta.dart';
import 'package:woo_commerce_api_dart/woo_commerce_api.dart';

class WooCommerceConnector {
  WooCommerceConfig wooCommerceApi;

  WooCommerceConnector(this.wooCommerceApi);

  ///Use this to create a simple product
  ///name
  ///description
  ///short description
  ///regular price
  ///categories
  ///images

  Map<String, dynamic> simpleProduct({
    @required String name,
    @required String description,
    @required String short_description,
    @required String regular_price,
    @required List categories,
    @required List images,
  }) {
    print(name);
    var product = new Products.simpleProduct(
        name: name,
        description: description,
        short_description: short_description,
        regular_price: regular_price,
        categories: categories,
        images: images);
    return product.toJson();
  }

  ///Use this to create a variable product
  ///name
  ///description
  ///short description
  ///regular price
  ///categories
  ///images
  ///attributes
  ///default_attributes
  Map<String, dynamic> variableProduct({
    @required String name,
    @required String description,
    @required String short_description,
    @required String regular_price,
    @required List categories,
    @required List images,
    @required List attributes,
    @required List default_attributes,
  }) {
    var product = new Products.variableProduct(
        name: name,
        description: description,
        short_description: short_description,
        regular_price: regular_price,
        categories: categories,
        images: images,
        attributes: attributes,
        default_attributes: default_attributes);
    return product.toJson();
  }

  ///Use this to create Product Image
  ///src
  Map<String, dynamic> productImage({
    @required String src,
  }) {
    Map<String, dynamic> data = {ProductImage.src.toString(): src};
    return data;
  }

  ///Use this to create product categories
  ///id
  Map<String, dynamic> productCategory({
    @required int id,
  }) {
    Map<String, dynamic> data = {ProductCategory.id.toString(): id};
    return data;
  }

  ///Use this to add attributes to products
  ///id
  ///position
  ///visible
  ///variation
  ///options
  ///
  Map productAttribute({
    @required String id,
    @required String position,
    @required bool visible,
    @required bool variation,
    @required List options,
  }) {
    Map data = {
      ProductAttribute.id: id,
      ProductAttribute.position: position,
      ProductAttribute.visible: visible,
      ProductAttribute.options: options,
    };
    return data;
  }

  ///This API helps you to create a new product.
  Future createAProduct(
      {@required String endPoint, @required Map<String, dynamic> data}) async {
    var result = await this
        .wooCommerceApi
        .postDataAsync(endPoint: endPoint, payLoad: json.encode(data));
    print(result);
    //return result;
  }

  ///This API lets you retrieve and view a specific product by ID.
  Future<List<dynamic>> retreiveAProduct({@required String endPoint}) async {
    return await wooCommerceApi.getDataAsync(endPoint: endPoint);
  }

  ///This API helps you to view all the products
  Future<List<Products>> listAllProducts({String endPoint}) async {
    var data = await wooCommerceApi.getDataAsync(endPoint: endPoint);
    List<Products> result = [];
    for (var value in data) {
      Products products = Products.fromJson(value);
      result.add(products);
    }
    return result;
  }

//  ///This API lets you make changes to a product.
//  Future<Map<String, dynamic>> updateAProduct(
//      {String endPoint, @required Map<String, dynamic> data}) async {
//    return await wooCommerceKit.updateAsync(endPoint, data);
//  }
//
//  ///This API lets you make changes to a product.
//  Future<Map<String, dynamic>> deleteAProduct(
//      {String endPoint, @required Map<String, dynamic> data}) async {
//    return await wooCommerceKit.deleteAsync(endPoint, data);
//  }

}
