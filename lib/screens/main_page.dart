import 'package:cleaning_comp/resources/color_manager.dart';
import 'package:cleaning_comp/resources/constants/nav_bar_data/nav_bar_list.dart';
import 'package:cleaning_comp/screens/contact_page.dart';
import 'package:cleaning_comp/screens/home_page.dart';
import 'package:cleaning_comp/screens/info_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with NavBarList {
  String title = "Canpak Group";
  int tabLength = 5;

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

  AppBar customNavBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: ColorManager.red,
      title: const Text('Canpak Group'),
      centerTitle: false,
      actions: const [
        FaIcon(FontAwesomeIcons.instagram),
        FaIcon(FontAwesomeIcons.facebook),
      ],
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              width: size.width * .80,
              child: TabBar(
                  indicatorColor: Colors.transparent,
                  tabs: navBarList.map((e) => Tab(text: e.title)).toList()),
            ),
          )),
    );
  }

  TabBarView customBody() {
    return TabBarView(
      children: navBarViewList.map((e) => e).toList(),
    );
  }
}
