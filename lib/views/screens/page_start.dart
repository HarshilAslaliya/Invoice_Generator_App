// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start_Page extends StatefulWidget {
  const Start_Page({Key? key}) : super(key: key);

  @override
  State<Start_Page> createState() => _Start_PageState();
}

class _Start_PageState extends State<Start_Page> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height * 0.945,
        width: size.width * 1,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(35),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(-1.05, -0.95),
              child: Container(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close_rounded,
                      size: 35,
                    ),
                  )),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "   Let's Start \nInvoice Maker",
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                      color: Color(0xff1e2529),
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.4,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.teal,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'add_invoice');
          },
          child: const Text(
            "Let's Start",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
