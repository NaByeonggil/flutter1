import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key, key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _appbarwidget() {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          print("click");
        },
        onLongPress: () {
          print(("long pressed"));
        },
        child: const Row(
          children: [
            Text(
              "아라동",
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      elevation: 1,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.tune)),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "asset/svg/bell.svg",
              width: 22,
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    //  Scaffold(
    //  appBar: _appbarwidget(),
    //body: Container(),
    // bottomNavigationBar: Container(),
    //);
  }
}
