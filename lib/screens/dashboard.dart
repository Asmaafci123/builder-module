import 'dart:ui';
import 'package:dashboard/size.dart';
import 'package:dashboard/style/colors.dart';
import 'package:dashboard/widgets/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar:AppBar(
        elevation: 0.0,
        backgroundColor:white,
        leading: Container(
          height: 20,
          width: 21,
          child: Image(
            image: AssetImage('assets/icons/menu.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: getWidth(context)*0.09,
                ),
                Container(
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: getHeight(context)*0.07,
                    width: getWidth(context)*0.06,
                  ),
                ),
                SizedBox(
                  width: getWidth(context)*0.02,
                ),
         Text(
           'BookProperty',
           style: TextStyle(
                   color: blue,
                 fontSize: 16,
             fontWeight: FontWeight.bold,
             fontFamily: 'Montserrat'
           ),),
              ],
            ),
            CircleAvatar(
              backgroundColor:white,
              radius: 15,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/img1.png'),

              ),
            )
          ],
        ),

        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Welcome Back',
                style: TextStyle(
                    color: gry,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat'
                )
            ),
            SizedBox(
              height: getHeight(context)*0.005,
            ),
            Text(
                'Muhammad Shakeel',
                style: TextStyle(
                    color: blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'
                )
            ),
            SizedBox(
              height: getHeight(context)*0.03,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    buildCustomCard(context,pink,'assets/images/clients.svg','CLIENTS','40')
                  ],
                ),
                SizedBox(
                  width: getWidth(context)*0.04,
                ),
                buildCustomCard(context,lightBlue,'assets/images/projects.svg','PROJECTS','04')

              ],
            ),
            SizedBox(
              height: getHeight(context)*0.02,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                buildCustomCard(context,lightPurple,'assets/images/costing.svg','PROJECT COSTING','14000000'),

                SizedBox(
                  width: getWidth(context)*0.04,
                ),
                buildCustomCard(context,orange,'assets/images/history.svg','PPAYMENT HISTORY','14000000'),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
