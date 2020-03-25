import 'package:e_commerce_flutter/models/profileItemModels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemProfile extends StatefulWidget {
  ProfileItemModels item;

  ItemProfile(this.item);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemProfileState(item);
  }
}

class _ItemProfileState extends State<ItemProfile> {
  ProfileItemModels item;

  _ItemProfileState(this.item);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 32),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(widget.item.color)),
            height: 50,
            width: 50,
            child: Icon(widget.item.iconData, color: Color(widget.item.colorIcon)),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: Text(widget.item.title,
              style: TextStyle(fontSize: 18, color: Color(0xff202857)),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.only(right: 16),
                alignment: Alignment.centerRight,
                child: Text(
                  widget.item.number.toString(),
                  style: TextStyle(fontSize: 18, color: Color(0xff202857)),
                )),
          ),
        ],
      ),
    );
  }
}
