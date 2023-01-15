// ignore_for_file: depend_on_referenced_packages, camel_case_types

import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/globals.dart';

class Add_Invoice extends StatefulWidget {
  const Add_Invoice({Key? key}) : super(key: key);

  @override
  State<Add_Invoice> createState() => _Add_InvoiceState();
}

class _Add_InvoiceState extends State<Add_Invoice> {
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
        child: Stack(
          children: [
            Center(
              child: (Globals.Pdf.isEmpty)
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 150,
                        ),
                        Column(
                          children: const [
                            Image(
                              image: AssetImage("asset/images/empty_box.png"),
                              color: Color(0xff1e2529),
                              height: 90,
                            ),
                            Text(
                              "No Invoice + Create new invoice",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: Globals.Pdf.length,
                        itemBuilder: (context, i) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              onTap: () async {
                                Uint8List data = await Globals.pdf.save();
                                await Printing.layoutPdf(
                                    onLayout: (format) => data);
                              },
                              title: Text(
                                "${Globals.Pdf[i]}.pdf",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              leading: const Image(
                                image: AssetImage('asset/images/pdf.png'),
                                height: 50,
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Globals.Pdf.removeAt(i);
                                    });
                                  },
                                  icon: const Icon(Icons.delete)),
                            ),
                            Divider(
                              thickness: 1.5,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          CupertinoIcons.back,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Invoice Maker",
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xff1e2529),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.35,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.teal,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'invoice_details');
          },
          child: const Text(
            "+ Add Invoice",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
