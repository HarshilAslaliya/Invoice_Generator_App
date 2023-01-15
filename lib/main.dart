import 'package:flutter/material.dart';
import 'package:invoice_generator_app/views/screens/Invoice_details.dart';
import 'package:invoice_generator_app/views/screens/add_invoice.dart';
import 'package:invoice_generator_app/views/screens/check_invoice.dart';
import 'package:invoice_generator_app/views/screens/page_start.dart';
import 'package:invoice_generator_app/views/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Home_Page(),
        'page_start':(context)=>const Start_Page(),
        'add_invoice': (context) => const Add_Invoice(),
        'invoice_details':(context)=>const Invoice_Details(),
        'detail_page':(context)=>const Check_Page(),
      },
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}

