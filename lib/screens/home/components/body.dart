import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:satsadon_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: kDefaltPadding),
            child: Row(
              children: <Widget>[
                Text(
                  "วันนี้ทานอะไรดี ?",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 44,
            width: 369,
            decoration: BoxDecoration(
                color: Color(0x7AEBEBEB),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 10)),
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
          )
        ],
      ),
    );
  }
}
