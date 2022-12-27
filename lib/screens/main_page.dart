import 'package:cleaning_comp/resources/color_manager.dart';
import 'package:cleaning_comp/screens/contact_page.dart';
import 'package:cleaning_comp/screens/home_page.dart';
import 'package:cleaning_comp/screens/info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String title = "Cleaning Comp";
  int tabLength = 3;
  final List<String> tabBarList = ["Anasayfa", "Hakkimizda", "Iletisim"];
  final List<Widget> tabBarViewList = [HomePage(), InfoPage(), ContactPage()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabLength,
      child: Scaffold(
        backgroundColor: Colors.black54,
        appBar: customNavBar(),
        body: customBody(),
      ),
    );
  }

  TabBarView customBody() {
    return TabBarView(
      children: tabBarViewList.map((e) => e).toList(),
    );
  }

  PreferredSize customNavBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        color: ColorManager.red,
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(color: ColorManager.white),
            ),
            const Spacer(),
            Expanded(
              child: TabBar(
                  indicatorColor: ColorManager.black,
                  tabs: tabBarList.map((e) => Tab(text: e)).toList()),
            )
          ],
        ),
      ),
    );
  }
}
