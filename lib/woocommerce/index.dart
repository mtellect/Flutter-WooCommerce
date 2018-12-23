import 'package:flutter/material.dart';
import 'package:flutter_woocommerce/woocommerce/commerce_home.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  PageController _pageController = new PageController(keepPage: true);
  int _currentPage = 0;

  void _onPageChanged(int value) {
    setState(() {
      _currentPage = value;
    });
  }

  Widget _buildCenterBtmContainer() {
    return new Align(
      alignment: Alignment.bottomCenter,
      child: new ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0)),
        child: new Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width * 0.6,
          padding: EdgeInsets.all(5.0),
          color: Colors.black,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildBtmIndicator(position: 0, icon: Icons.menu),
              _buildBtmIndicator(position: 1, icon: Icons.search),
              //_buildBtmIndicator(position: 2, icon: Icons.menu),
              _buildBtmIndicator(position: 2, icon: Icons.person),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBtmIndicator({@required int position, @required IconData icon}) {
    bool selected = position == _currentPage;
    return new Flexible(
        child: new GestureDetector(
      onTap: () {
        _pageController.jumpToPage(position);
      },
      child: new Icon(
        icon,
        size: 20.0,
        color: selected == true ? Colors.white : Colors.white.withOpacity(0.4),
      ),
    ));
  }

  Widget _buildRightBtmCart() {
    return new Align(
      alignment: Alignment.bottomRight,
      child: new ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0)),
        child: new Container(
          height: 90.0,
          width: MediaQuery.of(context).size.width * 0.25,
          color: Colors.black,
          child: Center(
            child: new Stack(
              children: <Widget>[_buildCartButton(), _buildIndicator(count: 0)],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCartButton() {
    return new Align(
      alignment: Alignment.center,
      child: new RawMaterialButton(
        //padding: EdgeInsets.all(2.0),
        shape: CircleBorder(
            side: BorderSide(color: Colors.white.withOpacity(0.4))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _buildIndicator({@required int count}) {
    return new Align(
      alignment: Alignment.topRight,
      child: new Container(
        margin: EdgeInsets.all(8.0),
        height: 30.0,
        width: 30.0,
        child: Center(
          child: Text(
            "$count",
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: new BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white)),
      ),
    );
  }

  List<Widget> _pages = [
    WooCommerceHome(),
    WooCommerceHome(),
    WooCommerceHome(),
    //WooCommerceHome(),
  ];

  Widget _buildPages() {
    return new PageView.builder(
      controller: _pageController,
      itemCount: _pages.length,
      onPageChanged: _onPageChanged,
      itemBuilder: (BuildContext context, int index) {
        return _pages[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          _buildPages(),
          _buildCenterBtmContainer(),
          _buildRightBtmCart()
        ],
      ),

      //bottomNavigationBar: _buildButtomBar(),
    );
  }
}
