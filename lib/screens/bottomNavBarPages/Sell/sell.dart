import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SELL extends StatefulWidget {
  const SELL({super.key});

  @override
  State<SELL> createState() => _SELLState();
}

class _SELLState extends State<SELL> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _description;
  late double _price;
  File? Image;

  Future pickImage() async {
    final Image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (Image == Null) return;
    final imageTemporary = File(Image!.path);
    setState(() => this.Image = imageTemporary);
  }

  void _submitForm() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    // save form data to database or send to API
    print('Name: $_name');
    print('Description: $_description');
    print('Price: $_price');
    print('Images: $Image');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton.icon(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)))),
            icon: Icon(Icons.add),
            label: Text('Add Something'),
            onPressed: () {
              alignment:
              AlignmentDirectional.topCenter;
              Positioned:
              top:
              -15;
              showModalBottomSheet(
                  clipBehavior: Clip.none,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  context: context,
                  builder: (BuildContext context) => Scaffold(
                        body: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Name of Product',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter product name';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _name = value!;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Product Description'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter product description';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _description = value!;
                                  },
                                ),
                                TextFormField(
                                  decoration:
                                      const InputDecoration(labelText: 'Price'),
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter price';
                                    }
                                    final price = double.tryParse(value);
                                    if (price == null) {
                                      return 'Please enter a valid price';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _price = double.parse(value!);
                                  },
                                ),
                                const SizedBox(height: 16),
                                const Text('Upload Images'),
                                const SizedBox(height: 8),
                                ElevatedButton.icon(
                                  icon: const Icon(Icons.image_outlined),
                                  label: const Text('Choose Images'),
                                  onPressed: () => pickImage(),
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  child: const Text('Submit'),
                                  onPressed: _submitForm,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ));
            }));
    ;
  }
}
