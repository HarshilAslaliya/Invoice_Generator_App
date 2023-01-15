// ignore_for_file: camel_case_types

import 'dart:typed_data';
import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:printing/printing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

// ignore: depend_on_referenced_packages
import 'package:pdf/pdf.dart';

// ignore: depend_on_referenced_packages
import 'package:pdf/widgets.dart' as pw;
import '../../models/globals.dart';

class Check_Page extends StatefulWidget {
  const Check_Page({Key? key}) : super(key: key);

  @override
  State<Check_Page> createState() => _Check_PageState();
}

class _Check_PageState extends State<Check_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makePdf();
  }

  makePdf() {
    Globals.pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('From :\n',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 14,
                          )),
                      pw.Text('${Globals.businessName}',
                          style: const pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 14,
                          )),
                      pw.Container(
                        width: 200,
                        child: pw.Text('${Globals.businessAddress}',
                            style: const pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 14,
                            )),
                      ),
                      pw.Text('${Globals.businessCountry},',
                          style: const pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 14,
                          )),
                      pw.Text('${Globals.businessEmail},',
                          style: const pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 14,
                          )),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Container(
                        height: 65,
                        width: 65,
                        color: PdfColors.black,
                        child: pw.Image(
                          pw.MemoryImage(
                            File(Globals.image!.path).readAsBytesSync(),
                          ),
                          fit: pw.BoxFit.cover,
                        ),
                      ),
                      pw.SizedBox(width: 15),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            '${Globals.businessName}',
                            style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          pw.Text(
                            '${Globals.businessName}',
                            style: const pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 25),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('To :\n',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 14,
                          )),
                      pw.Text('${Globals.clientName}',
                          style: const pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 14,
                          )),
                      pw.Container(
                        width: 200,
                        child: pw.Text('${Globals.clientAddress}',
                            style: const pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 14,
                            )),
                      ),
                      pw.Text('${Globals.clientCountry}',
                          style: const pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 14,
                          )),
                      pw.Text('${Globals.clientEmail}',
                          style: const pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 14,
                          )),
                    ],
                  ),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('Invoice # :',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 14,
                              )),
                          pw.Text('Date of Issue :',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 14,
                              )),
                          pw.Text('Due Date :',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 14,
                              )),
                          pw.Text('Currency :',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 14,
                              )),
                        ],
                      ),
                      pw.SizedBox(width: 20),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('${Globals.invoiceNumber}\n',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                          pw.Text('${Globals.dateIssue}',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                          pw.Text('${Globals.dueDate}',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                          pw.Text('${Globals.currency}',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 50),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Container(
                    width: 100,
                    child: pw.Text('Products',
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                  pw.Container(
                    width: 100,
                    child: pw.Text('Description',
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                  pw.Container(
                    alignment: pw.Alignment.center,
                    width: 50,
                    child: pw.Text('Price',
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                  pw.Container(
                    alignment: pw.Alignment.center,
                    width: 50,
                    child: pw.Text('QTY',
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                  pw.Container(
                    alignment: pw.Alignment.center,
                    width: 70,
                    child: pw.Text('Total Amount',
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Divider(
                thickness: 2,
                color: PdfColors.black,
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Container(
                    width: 100,
                    child: pw.Column(
                      children: [
                        ...Globals.ProductName.map(
                          (e) => pw.Text('$e',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                        ).toList(),
                        pw.Divider(
                          thickness: 1,
                          color: PdfColors.black,
                          indent: 300,
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    width: 100,
                    child: pw.Column(
                      children: [
                        ...Globals.Description.map(
                          (e) => pw.Text('$e',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                        ).toList(),
                        pw.Divider(
                          thickness: 1,
                          color: PdfColors.black,
                          indent: 300,
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    width: 50,
                    child: pw.Column(
                      children: [
                        ...Globals.ProductPrice.map(
                          (e) => pw.Text('$e',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                        ).toList(),
                        pw.Divider(
                          thickness: 1,
                          color: PdfColors.black,
                          indent: 300,
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    width: 50,
                    child: pw.Column(
                      children: [
                        ...Globals.ProductQuantity.map(
                          (e) => pw.Text('$e',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                        ).toList(),
                        pw.Divider(
                          thickness: 1,
                          color: PdfColors.black,
                          indent: 300,
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    width: 70,
                    child: pw.Column(
                      children: [
                        ...Globals.ProductTotal.map(
                          (e) => pw.Text('$e',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                        ).toList(),
                        pw.Divider(
                          thickness: 1,
                          color: PdfColors.black,
                          indent: 300,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 5),
              pw.Divider(
                thickness: 1,
                color: PdfColors.grey,
              ),
              pw.SizedBox(height: 30),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Container(),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('Subtotal :',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 14,
                              )),
                          pw.Text('Discount :',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 14,
                              )),
                          pw.Text('Tax :',
                              style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 14,
                              )),
                        ],
                      ),
                      pw.SizedBox(width: 20),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('${Globals.subTotal1}',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                          pw.Text('${Globals.productDiscount}',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                          pw.Text('${Globals.taxRate}%',
                              style: const pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Divider(
                thickness: 1,
                color: PdfColors.black,
                indent: 300,
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.SizedBox(width: 310),
                      pw.Text('  Total :',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 14,
                          )),
                      pw.SizedBox(width: 58),
                      pw.Text('${Globals.balance}',
                          style: const pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 14,
                          )),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 50),
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Text(
                  'Thanks ${Globals.clientName} for you order!',
                  style: const pw.TextStyle(
                    fontSize: 19,
                    color: PdfColors.black,
                  ),
                ),
              ),
              pw.SizedBox(height: 44),
              pw.Divider(
                thickness: 1,
                color: PdfColors.black,
              ),
              pw.SizedBox(height: 5),
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.Text(
                      'This invoice was generated with ',
                      style: const pw.TextStyle(
                        fontSize: 12,
                        color: PdfColors.black,
                      ),
                    ),
                    pw.Text(
                      'Invoice Maker App',
                      style: const pw.TextStyle(
                        fontSize: 12,
                        color: PdfColors.teal,
                        decoration: pw.TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        height: size.height * 0.945,
        width: size.width * 1,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(35),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Form(
              key: formkey,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    headerTitle(index: '01', title: 'Business Info'),
                    const SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: (Globals.image != null)
                          ? FileImage(Globals.image!)
                          : null,
                      child: (Globals.image != null)
                          ? Container()
                          : const Text(
                              'Add Logo',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black54),
                            ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Business Name : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.businessName}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Business Email : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.businessEmail}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Business Address : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.businessAddress}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Country : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.businessCountry}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    headerTitle(index: '02', title: 'Client Info'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Client Name : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.clientName}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Client Email : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.clientEmail}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Client Address : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.clientAddress}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Country : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.clientCountry}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    headerTitle(index: '03', title: 'Invoice Settings'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Invoice Number : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.invoiceNumber}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Date of issue : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.dateIssue}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Due Date : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.dueDate}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Currency : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.currency}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Tax Type : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.taxType}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                        const Text(
                          " Tax Rate : ",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${Globals.taxRate}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    headerTitle(index: '04', title: 'Billing Items'),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          const Text(
                            " Product Name : ",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${Globals.ProductName.map((e) => e).toList()}",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          const Text(
                            " Description : ",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${Globals.Description.map((e) => e).toList()}",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          const Text(
                            " Price : ",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${Globals.ProductPrice.map((e) => e).toList()}",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          const Text(
                            " Quantity : ",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${Globals.ProductQuantity.map((e) => e).toList()}",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          const Text(
                            " Total Amount : ",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${Globals.subTotal1}",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            " Discount : ",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${Globals.productDiscount}",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.1,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Text(
                    "Check Invoice",
                    style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Color(0xff1e2529),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      Uint8List data = await Globals.pdf.save();
                      await Printing.layoutPdf(onLayout: (format) => data);
                    },
                    icon: const Icon(
                      Icons.download_sharp,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget headerTitle({required index, required title}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "$index",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Color(0xff1e2529),
              ),
            ),
            const Text(
              " | ",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  color: Colors.teal),
            ),
            Text(
              "$title",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Color(0xff1e2529),
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 3,
          color: Colors.teal,
        ),
      ],
    );
  }
}
