import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/Widgets/BottomCartSheert.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

class ItemBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F9FD),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
                color: Color(0xFF475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                Text(
                  "Add to Cart",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
            decoration: BoxDecoration(
                color: Color(0xFF475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: InkWell(
              onTap: () {
                showSlidingBottomSheet(context, builder: (context) {
                  return SlidingSheetDialog(
                      elevation: 8,
                      cornerRadius: 16,
                      builder: (context, state) {
                        return BottomCartSheet();
                      });
                });
              },
              child: Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
