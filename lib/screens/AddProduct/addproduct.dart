/*
Add Product Page:
  1. blue color "Enter Product Details" container
  2. Enter Product name
  3. Enter Product category
  4. Enter Selling Price
  5. Enter Time of being used
  6. Product Description
  7. Quantity Available for selling
  8. Payment Method:
      - Cash on Delivery - Paytm - Gpay

*/
import 'package:open_file/open_file.dart';
import 'dart:ui' as ui;
import 'package:date_field/date_field.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olx_server/constants/colors.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:provider/provider.dart';

import 'Files_Page.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();
  Product product = Product(
      productName: "",
      productPrice: "",
      productAge: DateTime(2022),
      productDescription: "",
      productQuantity: 0);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final theme = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.isDarkMode == false
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 0, 0, 0),
          elevation: 0,
          title: Center(
              child: Text(
            "Add Product",
            style: TextStyle(
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255)),
            textAlign: TextAlign.center,
          )),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: Size(300,
                            (60).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: RPSCustomPainter(),
                      ),
                      const SizedBox(
                        width: 200,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Enter Product Details",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 500,
                  // height: 70,
                  child: Center(
                      child: Form(
                    key: _formKey,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 300,
                            height: 70,
                            child: TextFormField(
                                onSaved: (val) => product.productName,
                                style: TextStyle(
                                    color: theme.isDarkMode == false
                                        ? LightThemeColors.formFieldTextColor
                                        : DarkThemeColors.formFieldTextColor),
                                decoration: InputDecoration(
                                  labelText: 'Product Name',
                                  hintStyle: theme.isDarkMode == false
                                      ? LightThemeColors.decoration.hintStyle
                                      : DarkThemeColors.decoration.hintStyle,
                                  labelStyle: theme.isDarkMode == false
                                      ? LightThemeColors.decoration.labelStyle
                                      : DarkThemeColors.decoration.labelStyle,
                                  enabledBorder: theme.isDarkMode == false
                                      ? LightThemeColors
                                          .decoration.enabledBorder
                                      : DarkThemeColors
                                          .decoration.enabledBorder,
                                  disabledBorder: theme.isDarkMode == false
                                      ? LightThemeColors
                                          .decoration.disabledBorder
                                      : DarkThemeColors
                                          .decoration.disabledBorder,
                                  errorBorder: theme.isDarkMode == false
                                      ? LightThemeColors.decoration.errorBorder
                                      : DarkThemeColors.decoration.errorBorder,
                                  focusedBorder: theme.isDarkMode == false
                                      ? LightThemeColors
                                          .decoration.focusedBorder
                                      : DarkThemeColors
                                          .decoration.focusedBorder,
                                  // Icon will be replaced by a dropdown list of currency in future.
                                  icon: Icon(
                                    Icons.account_circle,
                                    color: theme.isDarkMode == false
                                        ? LightThemeColors.formFieldIconColor
                                        : DarkThemeColors.formFieldIconColor,
                                  ),
                                )),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              onSaved: (val) => product.productPrice,
                              style: TextStyle(
                                  color: theme.isDarkMode == false
                                      ? LightThemeColors.formFieldTextColor
                                      : DarkThemeColors.formFieldTextColor),
                              decoration: InputDecoration(
                                labelText: 'Price',
                                hintText: "Price of your Product",
                                hintStyle: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.hintStyle
                                    : DarkThemeColors.decoration.hintStyle,
                                labelStyle: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.labelStyle
                                    : DarkThemeColors.decoration.labelStyle,
                                enabledBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.enabledBorder
                                    : DarkThemeColors.decoration.enabledBorder,
                                disabledBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.disabledBorder
                                    : DarkThemeColors.decoration.disabledBorder,
                                errorBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.errorBorder
                                    : DarkThemeColors.decoration.errorBorder,
                                focusedBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.focusedBorder
                                    : DarkThemeColors.decoration.focusedBorder,
                                // Icon will be replaced by a dropdown list of currency in future.
                                icon: Icon(
                                  Icons.currency_rupee,
                                  color: theme.isDarkMode == false
                                      ? LightThemeColors.formFieldIconColor
                                      : DarkThemeColors.formFieldIconColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 300,
                            height: 70,
                            child: TextFormField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(300)
                              ],
                              onSaved: (val) => product.productDescription,
                              style: TextStyle(
                                  color: theme.isDarkMode == false
                                      ? LightThemeColors.formFieldTextColor
                                      : DarkThemeColors.formFieldTextColor),
                              decoration: InputDecoration(
                                labelText: 'Description of your Product',
                                hintStyle: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.hintStyle
                                    : DarkThemeColors.decoration.hintStyle,
                                labelStyle: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.labelStyle
                                    : DarkThemeColors.decoration.labelStyle,
                                enabledBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.enabledBorder
                                    : DarkThemeColors.decoration.enabledBorder,
                                disabledBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.disabledBorder
                                    : DarkThemeColors.decoration.disabledBorder,
                                errorBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.errorBorder
                                    : DarkThemeColors.decoration.errorBorder,
                                focusedBorder: theme.isDarkMode == false
                                    ? LightThemeColors.decoration.focusedBorder
                                    : DarkThemeColors.decoration.focusedBorder,
                                // Icon will be replaced by a dropdown list of currency in future.
                                icon: Icon(
                                  Icons.description,
                                  color: theme.isDarkMode == false
                                      ? LightThemeColors.formFieldIconColor
                                      : DarkThemeColors.formFieldIconColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            width: 500,
                            height: 70,
                            // color: Colors.orange,
                            child: Center(
                              child: SizedBox(
                                width: 300,
                                height: 70,
                                child: Row(
                                  children: [
                                    Flexible(
                                        child: Icon(
                                      Icons.calendar_month,
                                      color: theme.isDarkMode == false
                                          ? LightThemeColors.formFieldIconColor
                                          : DarkThemeColors.formFieldIconColor,
                                    )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Flexible(
                                      child: DateTimeField(
                                          dateTextStyle: TextStyle(
                                              color: theme.isDarkMode == false
                                                  ? LightThemeColors
                                                      .formFieldTextColor
                                                  : DarkThemeColors
                                                      .formFieldTextColor),
                                          decoration: InputDecoration(
                                            labelText: 'Date of Purchase',
                                            hintStyle: theme.isDarkMode == false
                                                ? LightThemeColors
                                                    .decoration.hintStyle
                                                : DarkThemeColors
                                                    .decoration.hintStyle,
                                            labelStyle:
                                                theme.isDarkMode == false
                                                    ? LightThemeColors
                                                        .decoration.labelStyle
                                                    : DarkThemeColors
                                                        .decoration.labelStyle,
                                            enabledBorder:
                                                theme.isDarkMode == false
                                                    ? LightThemeColors
                                                        .decoration
                                                        .enabledBorder
                                                    : DarkThemeColors.decoration
                                                        .enabledBorder,
                                            disabledBorder:
                                                theme.isDarkMode == false
                                                    ? LightThemeColors
                                                        .decoration
                                                        .disabledBorder
                                                    : DarkThemeColors.decoration
                                                        .disabledBorder,
                                            errorBorder:
                                                theme.isDarkMode == false
                                                    ? LightThemeColors
                                                        .decoration.errorBorder
                                                    : DarkThemeColors
                                                        .decoration.errorBorder,
                                            focusedBorder:
                                                theme.isDarkMode == false
                                                    ? LightThemeColors
                                                        .decoration
                                                        .focusedBorder
                                                    : DarkThemeColors.decoration
                                                        .focusedBorder,
                                            // Icon will be replaced by a dropdown list of currency in future.
                                          ),
                                          selectedDate: product.productAge,
                                          onDateSelected: (DateTime value) {
                                            setState(() {
                                              product.productAge = value;
                                            });
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        Center(
                          child: SizedBox(
                            width: 300,
                            height: 70,
                            child: TextFormField(
                                onSaved: (val) => product.productQuantity,
                                style: TextStyle(
                                    color: theme.isDarkMode == false
                                        ? LightThemeColors.formFieldTextColor
                                        : DarkThemeColors.formFieldTextColor),
                                decoration: InputDecoration(
                                  labelText: 'Quantity to sell',
                                  hintStyle: theme.isDarkMode == false
                                      ? LightThemeColors.decoration.hintStyle
                                      : DarkThemeColors.decoration.hintStyle,
                                  labelStyle: theme.isDarkMode == false
                                      ? LightThemeColors.decoration.labelStyle
                                      : DarkThemeColors.decoration.labelStyle,
                                  enabledBorder: theme.isDarkMode == false
                                      ? LightThemeColors
                                          .decoration.enabledBorder
                                      : DarkThemeColors
                                          .decoration.enabledBorder,
                                  disabledBorder: theme.isDarkMode == false
                                      ? LightThemeColors
                                          .decoration.disabledBorder
                                      : DarkThemeColors
                                          .decoration.disabledBorder,
                                  errorBorder: theme.isDarkMode == false
                                      ? LightThemeColors.decoration.errorBorder
                                      : DarkThemeColors.decoration.errorBorder,
                                  focusedBorder: theme.isDarkMode == false
                                      ? LightThemeColors
                                          .decoration.focusedBorder
                                      : DarkThemeColors
                                          .decoration.focusedBorder,
                                  // Icon will be replaced by a dropdown list of currency in future.
                                  icon: Icon(
                                    Icons.production_quantity_limits,
                                    color: theme.isDarkMode == false
                                        ? LightThemeColors.formFieldIconColor
                                        : DarkThemeColors.formFieldIconColor,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                Container(
                  color: Colors.grey,
                  width: screenWidth,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles(
                            allowMultiple:
                                true); //allows to pick multiple files
                        if (result == null) return;
                        openFiles(result.files);

                        final file = result.files.first;
                        // openFile(file);
                        print('Name:${file.name}');
                      },
                      child: Text("Documents"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
  
  void openFiles(List<PlatformFile> files) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => FilesPage(files:files,onOpenedFile:openFile,)));
}



class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.94, size.height * 0.50),
        Offset(size.width * 0.01, size.height * 0.50),
        [const Color(0xff08d2ee), const Color(0xffffffff)],
        [0.00, 1.00]);

    Path path0 = Path();
    path0.moveTo(size.width * 0.0112500, size.height * 0.1980000);
    path0.lineTo(size.width * 0.0100000, size.height * 0.8020000);
    path0.lineTo(size.width * 0.9362500, size.height * 0.8000000);
    path0.lineTo(size.width * 0.6862500, size.height * 0.2020000);
    path0.lineTo(size.width * 0.0112500, size.height * 0.1980000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Product {
  String productName;
  String productPrice;
  DateTime productAge;
  String productDescription;
  int productQuantity;
  Product({
    required this.productName,
    required this.productPrice,
    required this.productAge,
    required this.productDescription,
    required this.productQuantity,
  });
}
