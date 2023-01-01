import 'package:cleaning_comp/resources/color_manager.dart';
import 'package:cleaning_comp/resources/constants/nav_bar_data/nav_bar_list.dart';
import 'package:cleaning_comp/screens/contact_page.dart';
import 'package:cleaning_comp/screens/home_page.dart';
import 'package:cleaning_comp/screens/info_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with NavBarList {
  String title = "Canpak Group";
  int tabLength = 3;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabLength,
      child: Scaffold(
        backgroundColor: Colors.black54,
        appBar: customNavBar(context),
        body: customBody(),
      ),
    );
  }

  PreferredSize customNavBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            SizedBox(
              width: size.width * .50,
              child: TabBar(
                  indicatorColor: Colors.transparent,
                  tabs: navBarList.map((e) => Tab(text: e.title)).toList()),
            )
          ],
        ),
      ),
    );
  }

  TabBarView customBody() {
    return TabBarView(
      children: navBarViewList.map((e) => e).toList(),
    );
  }
}
