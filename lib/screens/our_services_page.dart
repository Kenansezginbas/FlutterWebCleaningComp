import 'package:flutter/material.dart';

class OurServicesPage extends StatefulWidget {
  const OurServicesPage({super.key});

  @override
  State<OurServicesPage> createState() => _OurServicesPageState();
}

class _OurServicesPageState extends State<OurServicesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Our Service"),
      ),
    );
  }
}
