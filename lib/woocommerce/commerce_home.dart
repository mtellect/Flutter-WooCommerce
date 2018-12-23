import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_woocommerce/api/remote_config.dart';
import 'package:flutter_woocommerce/api/woocommerce_config.dart';
import 'package:flutter_woocommerce/connector/woocommerce_connector.dart';
import 'package:flutter_woocommerce/products/products_model.dart';
import 'package:flutter_woocommerce/utils/not_found_widget.dart';
import 'package:woo_commerce_api_dart/woo_commerce_api.dart';
import 'package:http/http.dart' as http;

class WooCommerceHome extends StatefulWidget {
  @override
  _WooCommerceHomeState createState() => _WooCommerceHomeState();
}

class _WooCommerceHomeState extends State<WooCommerceHome>
    with AutomaticKeepAliveClientMixin {
  WooCommerceConfig _wooCommerceConfig = new WooCommerceConfig(
      "https://2point0music.com",
      "ck_dcf76e106f32459023cc2830d7381c533cdbf456",
      "cs_2355d0bcdcb1d7caf815efe20117ba34ace448e6");

  WooCommerceConfig _wooCommerceConfig1 = new WooCommerceConfig(
      "https://kitchenutensils.000webhostapp.com",
      "ck_3893688d7c4883a42ab23efe0d0660a0fefc91e4",
      "cs_4c06e8295187df559d6403f3f0c063aa31fb3477");

  WooCommerceConnector _wooCommerceConnector;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _wooCommerceConnector = new WooCommerceConnector(_wooCommerceConfig);
    //_testApiWithGet();
  }

  Future _testApiWithGet() async {
    var data = await _wooCommerceConfig.getDataAsync(endPoint: "products");
    //print(data);
  }

  Future _testApiWithPost() async {
    var data = await _wooCommerceConfig1.postDataAsync(
        endPoint: "products", payLoad: payloadProduct);
    print(data);
  }

  Future _testApiWithPut() async {
    var data = await _wooCommerceConfig.putDataAsync(
        endPoint: "customers", payLoad: payLoadAddress, queryAtId: 7);
    print(data);
  }

  Future _testApiWithDelete() async {
    var data = await _wooCommerceConfig1.deleteDataAsync(
        endPoint: "products", queryAtId: 34);
    print(data);
  }

  Future<List<Products>> _getAllStoreProducts() async {
    var products =
        await _wooCommerceConnector.listAllProducts(endPoint: "products");
    return products;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _productAsFuture(),
    );
  }

  Widget _buildAppBar() {
    return new AppBar(
      title: new Text("2point0music"),
      //leading: Icon(Icons.description),
      backgroundColor: Colors.black,
    );
  }

  Widget _productAsStream() {
    return new StreamBuilder(stream: null, builder: _buildProductList);
  }

  Widget _productAsFuture() {
    return new FutureBuilder(
        future: _getAllStoreProducts(), builder: _buildProductList);
  }

  Widget _buildProductList(
      BuildContext context, AsyncSnapshot<List<Products>> snapshot) {
    if (snapshot.hasError) {
      print("error");
      return NotFoundWidget(
        notFoundIcon: Icons.error_outline,
        notFoundTitle: "Error not found",
        notFoundSubTitle: "An error occurred!",
      );
    }

    switch (snapshot.connectionState) {
      case ConnectionState.waiting:
        return Center(child: new CircularProgressIndicator());
      default:
        return _buildProductsGrid(snapshot);
    }
  }

  Widget _buildProductsGrid(AsyncSnapshot<List<Products>> snapshot) {
    print(snapshot.data.length);

    if (snapshot.data.length == 0) {
      print("No data");
      return NotFoundWidget(
        notFoundIcon: Icons.search,
        notFoundTitle: "No Product Found",
        notFoundSubTitle: "Sorry no products found...",
      );
    }

    return new GridView.builder(
      padding: EdgeInsets.only(left: 6.0, right: 6.0, top: 6.0, bottom: 100.0),
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.65),
      itemBuilder: (context, index) {
        return _productItemBuilder(
            context: context, index: index, snapshot: snapshot);
      },
      itemCount: 10,
    );
  }

  Widget _productItemBuilder(
      {@required BuildContext context,
      @required int index,
      @required AsyncSnapshot<List<Products>> snapshot}) {
    print("Maugost am here");

    //print(snapshot.data[index].images[0]["src"]);
    return new Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2.0,
              spreadRadius: 2.0,
              offset: Offset(0.5, 1.0)),
        ],
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            height: 150.0,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                image: DecorationImage(
                    image:
                        new NetworkImage(snapshot.data[index].images[0]["src"]),
                    fit: BoxFit.cover)),
          ),
          new SizedBox(
            height: 8.0,
          ),
          new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new Text(
                  snapshot.data[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                new SizedBox(
                  height: 8.0,
                ),
                new Text(
                  "₦${snapshot.data[index].price}",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                new Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    splashColor: Colors.white,
                    highlightColor: Colors.white,
                    highlightedBorderColor: Colors.grey.withOpacity(0.5),
                    borderSide: BorderSide(color: Colors.grey),
                    onPressed: () {},
                    child: Center(
                        child: new Text(
                      "Add to basket",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
