import 'package:flutter/material.dart';
import 'package:resposiveui/const.dart';
import 'package:resposiveui/utils/appbar.dart';
import 'package:resposiveui/utils/drawer.dart';
import 'package:resposiveui/utils/mybox.dart';
import 'package:resposiveui/utils/mytile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackGroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          // open drawer
          myDrawer,

          // rest of the body

          Expanded(
            flex: 3,
            child: Column(
              children: [
                // 4 boxs ontop
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return MyBox();
                        }),
                  ),
                ),

                // tiles below it
                Expanded(
                    child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MyTile();
                  },
                ))
              ],
            ),
          ),

          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[400],
                  ),
                ),
              ),
              Expanded(child: Text("C H I R A G"))
            ],
          ))
        ],
      ),
    );
  }
}
