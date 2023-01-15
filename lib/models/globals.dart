// ignore_for_file: non_constant_identifier_names

import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:pdf/widgets.dart' as pw;

class Globals {
  static File? image;

  static final pdf = pw.Document();

  static List addProduct = [

  ];

  static String? businessName;
  static String? businessEmail;
  static String? businessAddress;
  static String? businessCountry;

  static String? clientName;
  static String? clientEmail;
  static String? clientAddress;
  static String? clientCountry;

  static String? invoiceNumber;
  static String? dateIssue;
  static String? dueDate;
  static String? currency;
  static String? taxType;
  static double? taxRate;

  static String? productName;
  static String? description;
  static double productPrice = 0;
  static double productQuantity = 0;


  static double productDiscount = 0;
  static double productLineTotal = 0;

  static double subTotal1 = 0;
  static double discount1 = 0;
  static double tax = 0;
  static double balance = 0;

  static List ProductName=[];
  static List Description=[];
  static List ProductPrice=[];
  static List ProductQuantity =[];
  static List ProductTotal =[];
  static List ProductDiscount =[];

  static List pp=[];
  static List Pdf = [];

}
