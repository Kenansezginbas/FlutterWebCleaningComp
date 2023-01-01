import 'dart:collection';

import 'package:cleaning_comp/screens/contact_page.dart';
import 'package:cleaning_comp/screens/home_page.dart';
import 'package:cleaning_comp/screens/info_page.dart';
import 'package:cleaning_comp/screens/our_services_page.dart';
import 'package:cleaning_comp/screens/referances_page.dart';
import 'package:flutter/material.dart';

mixin NavBarList {
  // nav bar list
  final List<NavBarModel> navBarList = [
    NavBarModel("Anasayfa"),
    NavBarModel("Hakkımızda"),
    NavBarModel("Hizmetlerimiz"),
    NavBarModel("Referanslarımız"),
    NavBarModel("İletişim"),
  ];

  final List<Widget> navBarViewList = const [
    HomePage(),
    InfoPage(),
    OurServicesPage(),
    ReferancesPage(),
    ContactPage(),
  ];
}

class NavBarModel {
  final String title;
  NavBarModel(this.title);
}
//