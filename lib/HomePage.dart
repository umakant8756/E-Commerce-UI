import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/Widgets/AllItemWidget.dart';
import 'package:nike_shoe_ui/Widgets/HomeBottomNavBar.dart';
import 'package:nike_shoe_ui/Widgets/RowItemWidget.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Icon(
                        Icons.sort,
                        size: 30,
                        color: Color(0xFF475269),
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                        color: Color(0xFF475269),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    //margin: EdgeInsets.only(left: 5),
                    width: 270,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 27,
                    color: Color(0xFF475269),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RowItemWidget(),
            SizedBox(
              height: 10,
            ),
            AllItemWidget(),
          ]),
        ),
        
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
