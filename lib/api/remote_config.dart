class RemoteConfig {
  static const Map MY_TOKEN = {
    "OAuth oauth_consumer_key": "bXxAxE4s0qEH",
    "oauth_token": "yxJlQ6nBgLjGt29SamE5FlyF",
    "oauth_signature_method": "HMAC-SHA1",
    "oauth_timestamp": "1545414852",
    "oauth_nonce": "No8rEySKu5a",
    "oauth_version": "1.0",
    "oauth_signature": "%2FZP6kNlO%2Fzntg0e5JpKk0QpAL68%3D"
  };

  static const String API_URL =
      "https://kitchenutensils.000webhostapp.com/wp-json/wc/v3/customers?"
      "oauth_consumer_key=bXxAxE4s0qEH"
      "&oauth_token=yxJlQ6nBgLjGt29SamE5FlyF"
      "&oauth_signature_method=HMAC-SHA1"
      "&oauth_timestamp=1545419410"
      "&oauth_nonce=No8rEySKu5a"
      "&oauth_version=1.0"
      "&oauth_signature=%2FZP6kNlO%2Fzntg0e5JpKk0QpAL68%3D";

  static const String API_URL1 =
      "https://kitchenutensils.000webhostapp.com/wp-json/wc/v3/customers?"
      "oauth_consumer_key=bXxAxE4s0qEH"
      "&oauth_token=yxJlQ6nBgLjGt29SamE5FlyF"
      "&oauth_signature_method=HMAC-SHA1"
      "&oauth_timestamp=1545419410"
      "&oauth_nonce=LzJor21tATi"
      "&oauth_version=1.0"
      "&oauth_signature=YsgZ59ob/w8Wo0JLSAcoynmrP64=";

  static const String AUTH_TOKEN = "OAuth oauth_consumer_key=bXxAxE4s0qEH" +
      "&oauth_token=yxJlQ6nBgLjGt29SamE5FlyF" +
      "oauth_signature_method=HMAC-SHA1" +
      "oauth_timestamp=1545414852" +
      "oauth_nonce=No8rEySKu5a" +
      "oauth_version=1.0" +
      "oauth_signature=%2FZP6kNlO%2Fzntg0e5JpKk0QpAL68%3D";

  static final Map<dynamic, String> config = {
    "AuthorizationToken": AUTH_TOKEN,
    "Api_URL": API_URL,
    "Content-Type": "application/json",
    "BASE_URL": "https://kitchenutensils.000webhostapp.com/",
    "BASE_PRODUCTS_URL": "/wp-json/wc/v3/customers",
  };

  String auth_header =
      'OAuth oauth_consumer_key="bXxAxE4s0qEH",oauth_token="yxJlQ6nBgLjGt29SamE5FlyF",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1545423109",oauth_nonce="pElSyruPrnG",oauth_version="1.0",oauth_signature="Yyqh8CQZvd300XQUqXSuHpJieTk%3D';
}

const Map payLoad = {
  "email": "melody@example.com",
  "first_name": "John",
  "last_name": "Doe core",
  "username": "melody.o",
};

const Map payLoadAddress = {
  "billing": {
    "first_name": "melody billing",
  },
  "shipping": {"first_name": "melody shipping"}
};

const Map payloadProduct = {
  "name": "Maugost Quality",
  "type": "simple",
  "regular_price": "21.99",
  "description":
      "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  "short_description":
      "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
  "categories": [
    {"id": 9},
    {"id": 14}
  ],
  "images": [
    {
      "src":
          "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg"
    },
    {
      "src":
          "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg"
    }
  ]
};
