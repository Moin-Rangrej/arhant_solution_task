import 'package:flutter/material.dart';

class Vendor extends StatefulWidget {
  const Vendor({super.key});

  @override
  State<Vendor> createState() => _VendorState();
}

class _VendorState extends State<Vendor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vendor")),
      body: SafeArea(child: Text("Welcome Vendor")),
    );
  }
}