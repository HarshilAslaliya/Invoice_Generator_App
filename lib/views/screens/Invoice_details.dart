// ignore_for_file: depend_on_referenced_packages, camel_case_types

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/globals.dart';

class Invoice_Details extends StatefulWidget {
  const Invoice_Details({Key? key}) : super(key: key);

  @override
  State<Invoice_Details> createState() => _Invoice_DetailsState();
}

class _Invoice_DetailsState extends State<Invoice_Details> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _businessname = TextEditingController();
  final TextEditingController _businessemail = TextEditingController();
  final TextEditingController _businessaddres = TextEditingController();
  final TextEditingController _country = TextEditingController();

  final TextEditingController _clientname = TextEditingController();
  final TextEditingController _clientemail = TextEditingController();
  final TextEditingController _clientaddress = TextEditingController();
  final TextEditingController _clientcountry = TextEditingController();

  final TextEditingController _invoicenumber = TextEditingController();
  final TextEditingController _dateissue = TextEditingController();
  final TextEditingController _duedate = TextEditingController();
  final TextEditingController _currency = TextEditingController();
  final TextEditingController _taxtype = TextEditingController();
  final TextEditingController _taxrate = TextEditingController();

  final TextEditingController _discount = TextEditingController();

  String? businessName;
  String? businessEmail;
  String? businessAddress;
  String? businessCountry;

  String? clientName;
  String? clientEmail;
  String? clientAddress;
  String? clientCountry;

  String? invoiceNumber;
  String? dateIssue;
  String? dueDate;
  String? currency;
  String? taxType;
  String? taxRate;

  String? productName;
  String? description;
  String? price;
  String? quantity;
  String? discount;
  String? subTotal;
  String? total;
  String? endTotal;

  int i = 0;
  List<Map<String, dynamic>> map2 = [];

  // ignore: non_constant_identifier_names
  List<Map<String, dynamic>> map1 = [];

  getCamera() async {
    ImagePicker pick = ImagePicker();
    XFile? file = await pick.pickImage(source: ImageSource.camera);
    if (file != null) {
      setState(() {
        Globals.image = File(file.path);
      });
    }
  }

  getGallery() async {
    ImagePicker pick = ImagePicker();
    XFile? file = await pick.pickImage(source: ImageSource.gallery);
    if (file != null) {
      setState(() {
        Globals.image = File(file.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        height: size.height,
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
              key: formKey,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    headerTitle(
                      index: '01',
                      title: 'Business Info',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const Alignment(0, 0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                getGallery();
                              });
                            },
                            child: CircleAvatar(
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
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    textField(
                      controllarValue: _businessname,
                      validateValue: 'Name',
                      onSaved: (val) {
                        setState(() {
                          businessName = val!;
                        });
                      },
                      hinttextValue: 'Business name or website',
                      keyBoardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _businessemail,
                      validateValue: 'Email',
                      onSaved: (val) {
                        setState(() {
                          businessEmail = val!;
                        });
                      },
                      hinttextValue: 'Business email',
                      keyBoardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _businessaddres,
                      validateValue: 'Address',
                      onSaved: (val) {
                        setState(() {
                          businessAddress = val!;
                        });
                      },
                      hinttextValue: 'Business address',
                      keyBoardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _country,
                      validateValue: 'Country',
                      onSaved: (val) {
                        setState(() {
                          businessCountry = val!;
                        });
                      },
                      hinttextValue: 'Country',
                      keyBoardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    headerTitle(index: '02', title: 'Client Info'),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _clientname,
                      validateValue: 'Name',
                      onSaved: (val) {
                        setState(() {
                          clientName = val!;
                        });
                      },
                      hinttextValue: "Client's name",
                      keyBoardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _clientemail,
                      validateValue: 'Email',
                      onSaved: (val) {
                        setState(() {
                          clientEmail = val!;
                        });
                      },
                      hinttextValue: "Client's email",
                      keyBoardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _clientaddress,
                      validateValue: 'Address',
                      onSaved: (val) {
                        setState(() {
                          clientAddress = val!;
                        });
                      },
                      hinttextValue: "Client's address",
                      keyBoardType: TextInputType.multiline,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _clientcountry,
                      validateValue: 'Country',
                      onSaved: (val) {
                        setState(() {
                          clientCountry = val!;
                        });
                      },
                      hinttextValue: "Client's country",
                      keyBoardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    headerTitle(index: '03', title: 'Invoice Settings'),
                    const Text(
                      " Invoice Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    textField(
                      controllarValue: _invoicenumber,
                      validateValue: 'Number',
                      onSaved: (val) {
                        setState(() {
                          invoiceNumber = val!;
                          Globals.Pdf.add(invoiceNumber);
                        });
                      },
                      hinttextValue: "Invoice Number",
                      keyBoardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Invalid Date";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          dateIssue = val!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: _dateissue,
                      onTap: () async {
                        DateTime? pickdate = await showDatePicker(
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: Colors.teal,
                                    onPrimary: Colors.white,
                                    onSurface:Colors.teal,
                                  ),
                                ),
                                child: child!,
                              );
                            },
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickdate != null) {
                          setState(() {
                            _dateissue.text =
                                DateFormat('dd/MM/yyyy').format(pickdate);
                          });
                        }
                      },
                      style: const TextStyle(fontSize: 20),
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        hintText: "Date",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.black54),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black54),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.teal),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),),
                    const SizedBox(
                      height: 15,
                    ),

                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Invalid Date";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          dueDate = val!;
                        });
                      },
                      textInputAction: TextInputAction.next,
                      controller: _duedate,
                      onTap: () async {
                        DateTime? pickdate = await showDatePicker(
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: Colors.teal,
                                    onPrimary: Colors.white,
                                    onSurface: Colors.teal,
                                  ),
                                ),
                                child: child!,
                              );
                            },
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickdate != null) {
                          setState(() {
                            _duedate.text =
                                DateFormat('dd/MM/yyyy').format(pickdate);
                          });
                        }
                      },
                      style: const TextStyle(fontSize: 20),
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        hintText: "Due Date",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.black54),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black54),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.teal),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      " Payment Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    textField(
                      controllarValue: _currency,
                      validateValue: 'Currency',
                      onSaved: (val) {
                        setState(() {
                          currency = val!;
                        });
                      },
                      hinttextValue: "Currency",
                      keyBoardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _taxtype,
                      validateValue: 'Tax',
                      onSaved: (val) {
                        setState(() {
                          taxType = val!;
                        });
                      },
                      hinttextValue: "Tax Type",
                      keyBoardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    textField(
                      controllarValue: _taxrate,
                      validateValue: 'Tax Rate',
                      onSaved: (val) {
                        setState(() {
                          taxRate = val!;
                        });
                      },
                      hinttextValue: "Tax Rate %",
                      keyBoardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "04",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
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
                            const Text(
                              "Billing Items",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 35,
                                color: Color(0xff1e2529),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    Map<String, dynamic> h1 = {
                                      'i': i,
                                    };
                                    Map<String, dynamic> h2 = {
                                      'p': TextEditingController(),
                                      'd': TextEditingController(),
                                      'pr': TextEditingController(),
                                      'q': TextEditingController(),
                                    };
                                    map1.addAll([h1]);
                                    map2.addAll([h2]);
                                    i++;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                          ],
                        ),
                        const Divider(
                          thickness: 3,
                          color: Colors.teal,
                        ),
                      ],
                    ),
                    Column(
                        children: map2
                            .map(
                              (e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    " Your Product Or Service",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  textField(
                                    controllarValue: map1[map2.indexOf(e)]['p'],
                                    validateValue: 'Name',
                                    onSaved: (val) {
                                      setState(() {
                                        productName = val!;
                                        Globals.ProductName.add(productName);
                                      });
                                    },
                                    hinttextValue: "Product Name",
                                    keyBoardType: TextInputType.name,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    " Description",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  textField(
                                    controllarValue: map1[map2.indexOf(e)]['d'],
                                    validateValue: 'Description',
                                    onSaved: (val) {
                                      setState(() {
                                        description = val!;
                                        Globals.Description.add(description);
                                      });
                                    },
                                    hinttextValue: "Describe product service",
                                    keyBoardType: TextInputType.multiline,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            " Price",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 160,
                                            child: textField(
                                              controllarValue:
                                                  map1[map2.indexOf(e)]['pr'],
                                              validateValue: 'Price',
                                              onSaved: (val) {
                                                setState(() {
                                                  price = val!;
                                                  Globals.ProductPrice.add(
                                                      price);
                                                });
                                              },
                                              hinttextValue: "\$0.00",
                                              keyBoardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            " Quantity",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 160,
                                            child: textField(
                                              controllarValue:
                                                  map1[map2.indexOf(e)]['q'],
                                              validateValue: 'Quantity',
                                              onSaved: (val) {
                                                setState(() {
                                                  quantity = val!;
                                                  Globals.ProductQuantity.add(
                                                      quantity);
                                                });
                                              },
                                              hinttextValue: "0",
                                              keyBoardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            )
                            .toList()),
                    const Text(
                      " Discount(%)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 160,
                      child: textField(
                        controllarValue: _discount,
                        validateValue: 'Discount',
                        onSaved: (val) {
                          setState(() {
                            discount = val!;
                          });
                        },
                        hinttextValue: "0",
                        keyBoardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.teal)),
                          onPressed: () async {
                            setState(() {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                setState(() {
                                  Globals.Pdf.add(invoiceNumber);
                                });

                                print(Globals.ProductName);
                                print(Globals.ProductQuantity);
                                print(Globals.Description);
                                print(Globals.ProductPrice);

                                for (int i = 0;
                                    i < Globals.ProductPrice.length;
                                    i++) {
                                  Globals.ProductTotal.add(int.parse(
                                          Globals.ProductPrice[i]) *
                                      int.parse(Globals.ProductQuantity[i]));
                                }
                                print(Globals.ProductTotal);

                                Globals.businessName = businessName;
                                Globals.businessEmail = businessEmail;
                                Globals.businessAddress = businessAddress;
                                Globals.businessCountry = businessCountry;

                                Globals.clientName = clientName;
                                Globals.clientEmail = clientEmail;
                                Globals.clientAddress = clientAddress;
                                Globals.clientCountry = clientCountry;

                                Globals.invoiceNumber = invoiceNumber;
                                Globals.dateIssue = dateIssue;
                                Globals.dueDate = dueDate;
                                Globals.currency = currency;
                                Globals.taxType = taxType;
                                Globals.taxRate = double.parse(taxRate!);

                                Globals.productName = productName;
                                Globals.description = description;
                                Globals.productPrice = double.parse(price!);
                                Globals.productQuantity =
                                    double.parse(quantity!);
                                Globals.productDiscount =
                                    double.parse(discount!);

                                Globals.productDiscount =
                                    (Globals.productPrice *
                                            (Globals.productDiscount / 100)) *
                                        (Globals.productQuantity);
                                for (int i = 0;
                                    i < Globals.ProductPrice.length;
                                    i++) {
                                  Globals.subTotal1 += Globals.ProductTotal[i];
                                }
                                print(Globals.subTotal1);
                                Globals.tax = (Globals.productPrice *
                                        (Globals.taxRate! / 100)) *
                                    (Globals.productQuantity);
                                Globals.balance = (Globals.subTotal1 -
                                        Globals.discount1 -
                                        Globals.productDiscount) +
                                    Globals.tax;

                                const snackbar = SnackBar(
                                  content: Text(
                                    "Your details saved successfully",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  backgroundColor: Colors.teal,
                                  behavior: SnackBarBehavior.floating,
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              }
                            });
                          },
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.save_rounded,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                Text(
                                  ' Save',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
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
                      Text("Invoice Details",
                          style: GoogleFonts.josefinSans(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              color: Color(0xff1e2529),
                            ),
                          )),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'detail_page');
                        },
                        icon: const Icon(
                          CupertinoIcons.info_circle_fill,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                fontWeight: FontWeight.w900,
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
                fontWeight: FontWeight.w900,
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

  Widget textField({
    required controllarValue,
    required validateValue,
    required onSaved,
    required hinttextValue,
    required keyBoardType,
  }) {
    return TextFormField(
      controller: controllarValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (val) {
        if (val!.isEmpty) {
          return 'Invalid $validateValue';
        }
        return null;
      },
      onSaved: onSaved,
      textInputAction: TextInputAction.next,
      style: const TextStyle(fontSize: 20),
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        hintText: "$hinttextValue",
        hintStyle: const TextStyle(fontSize: 18, color: Colors.black54),
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.black54),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.teal),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
