import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:satsadon_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          createHeader(),
          createSearch(),
          Container(
            padding: EdgeInsets.all(kDefaltPadding),
            child: Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: Stack(
                    alignment: Alignment(0, -.7),
                    children: <Widget>[
                      Container(
                        height: 103,
                        width: 67,
                        decoration: BoxDecoration(
                            color: Color(0xFFED704B),
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x1A000000),
                                  blurRadius: 50,
                                  offset: Offset(4, 8))
                            ]),
                      ),
                      Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(29))),
                      Container(
                        height: 44,
                        width: 44,
                        child: Image(
                            image: AssetImage("assets/icons/fastfood.png")),
                      ),
                      Positioned(
                        top: 65,
                        child: Text("อาหาร",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(),
                  child: Stack(
                    alignment: Alignment(0, -.7),
                    children: <Widget>[
                      Container(
                        height: 103,
                        width: 67,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x1A000000),
                                  blurRadius: 50,
                                  offset: Offset(4, 8))
                            ]),
                      ),
                      Container(
                          height: 57,
                          width: 57,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(29))),
                      Container(
                        height: 44,
                        width: 44,
                        child: Image(
                            image: AssetImage("assets/icons/shoppingicon.png")),
                      ),
                      Positioned(
                        top: 65,
                        child: Text("ของใช้",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container createSearch() {
    return Container(
      height: 44,
      width: 369,
      decoration: BoxDecoration(
          color: Color(0x7AEBEBEB), borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 8)),
          SvgPicture.asset("assets/icons/magnify.svg"),
          Expanded(
              child: TextField(
                  decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: kDefaltPadding),
            hintText: "ค้นหาร้านไม่บูด",
            hintStyle: TextStyle(color: kTextColor.withOpacity(0.5)),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ))),
        ],
      ),
    );
  }

  Container createHeader() {
    return Container(
      padding: EdgeInsets.only(left: kDefaltPadding + 7),
      child: Row(
        children: <Widget>[
          Text(
            "วันนี้ทานอะไรดี ?",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
