import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class WooCommerceConfig {
  String wooCommerceUrl;
  String clientKey;
  String clientSecret;
  String requestPath;

  WooCommerceConfig(this.wooCommerceUrl, this.clientKey, this.clientSecret)
      : requestPath = "/wp-json/wc/v3/";

  String _buildRequestUrl(String endPoint, [var queryAt]) {
    String requestUrl;
    print(queryAt);
    if (queryAt == null) {
      requestUrl = '$wooCommerceUrl'
          '$requestPath$endPoint?consumer_key='
          '$clientKey&consumer_secret=$clientSecret';
    } else {
      requestUrl = '$wooCommerceUrl'
          '$requestPath$endPoint/$queryAt?consumer_key='
          '$clientKey&consumer_secret=$clientSecret';
    }

    print(requestUrl);
    return requestUrl;
  }

  String _buildDeleteRequestUrl(String endPoint, [var queryAt]) {
    String requestUrl;
    print(queryAt);
    if (queryAt == null) {
      requestUrl = '$wooCommerceUrl'
          '$requestPath$endPoint?force=true&consumer_key='
          '$clientKey&consumer_secret=$clientSecret';
    } else {
      requestUrl = '$wooCommerceUrl'
          '$requestPath$endPoint/$queryAt?force=true&consumer_key='
          '$clientKey&consumer_secret=$clientSecret';
    }

    print(requestUrl);
    return requestUrl;
  }

  Map<String, String> _buildRequestHeader() {
    var header = {
      "cache-control": "no-cache",
      "Content-Type": "application/json",
    };
    return header;
  }

  ///Used to make a get request to woocommerce
  ///with respect to specific endpoints to get from
  ///
  Future getDataAsync({@required String endPoint}) async {
    var client = http.Client();
    var response = await client.get(
      Uri.encodeFull(_buildRequestUrl(endPoint)),
      headers: _buildRequestHeader(),
    );
    print(jsonDecode(response.body));
    return json.decode(response.body);
  }

  ///Used to make a post request to woocommerce
  ///with respect to specific endpoints to post to
  ///with respect to payload[the data to add]
  Future postDataAsync(
      {@required String endPoint, @required var payLoad}) async {
    var client = http.Client();
    var response = await client.post(Uri.encodeFull(_buildRequestUrl(endPoint)),
        headers: _buildRequestHeader(), body: jsonEncode(payLoad));
    print(jsonDecode(response.body));
    return json.decode(response.body);
  }

  ///Used to make a get request to woocommerce
  ///with respect to specific endpoints to update
  ///with respect to payload[the data to update]
  ///with respect to queryAt[the path to update]
  Future putDataAsync(
      {@required String endPoint,
      @required var queryAtId,
      @required var payLoad}) async {
    var client = http.Client();
    var response = await client.put(
        Uri.encodeFull(_buildRequestUrl(endPoint, queryAtId)),
        headers: _buildRequestHeader(),
        body: jsonEncode(payLoad));
    print(jsonDecode(response.body));
    return json.decode(response.body);
  }

  ///Used to make a get request to woocommerce
  ///with respect to specific endpoints to delete from
  ///with respect to queryAt[the path to delete]
  Future deleteDataAsync(
      {@required String endPoint, @required var queryAtId}) async {
    var header = {
      "cache-control": "no-cache",
      "Content-Type": "application/json",
    };

    var client = http.Client();
    var response = await client
        .delete(Uri.encodeFull(_buildDeleteRequestUrl(endPoint, queryAtId)),
            headers: header)
        .catchError((e) {
      print("Error maug $e");
    });
    print(jsonDecode(response.body));
    return json.decode(response.body);
  }
}
