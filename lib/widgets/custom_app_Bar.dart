import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {

final IconData leftIcon; 
final IconData rightIcon;
final Function? leftCallBack;

CustomAppBar(this.leftIcon,this.rightIcon,{this.leftCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right:25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap:  leftCallBack != null ? () => leftCallBack!() : null
              ,
              child: _BuildIcon(leftIcon),
            ),

            _BuildIcon(rightIcon),   
         
          ],
        ),
      );
  }

  Widget _BuildIcon(IconData icon) {
    return Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(icon),
            );
  }
}