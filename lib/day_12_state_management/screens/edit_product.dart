import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_12_state_management/provider/products.dart';

class EditProduct extends StatefulWidget {
  static const id = "/editProduct";

  const EditProduct({Key? key}) : super(key: key);

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  final _descriptionFocusNode = FocusNode();
  final _priceFocusNode = FocusNode();
  final _imageFocusNode = FocusNode();
  final _imageUrlController = TextEditingController();
  final _form = GlobalKey<FormState>();

  var _editProduct =
      Products(id: "", title: "", description: "", imageUrl: "", price: 0);

  @override
  void dispose() {
    _imageUrlController.removeListener(_updateImageUrl);
    _descriptionFocusNode.dispose();
    _priceFocusNode.dispose();
    _imageFocusNode.dispose();
    _imageUrlController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _imageUrlController.addListener(_updateImageUrl);
    super.initState();
  }

  void _updateImageUrl() {
    if (!_imageFocusNode.hasFocus) {
      setState(() {});
    }
  }

  void _saveForm() {
    _form.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Product"),
          actions: [
            IconButton(
                onPressed: () {
                  _saveForm();
                },
                icon: const Icon(Icons.save))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
              key: _form,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter the title",
                        labelText: "Title",
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context)
                            .requestFocus(_descriptionFocusNode);
                      },
                      onSaved: (value) {
                        _editProduct = Products(
                            id: _editProduct.id,
                            title: value.toString(),
                            description: _editProduct.description,
                            imageUrl: _editProduct.imageUrl,
                            price: _editProduct.price);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter the Description",
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                      ),
                      minLines: 1,
                      maxLines: 3,
                      keyboardType: TextInputType.multiline,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_priceFocusNode);
                      },
                      focusNode: _descriptionFocusNode,
                      onSaved: (value) {
                        _editProduct = Products(
                            id: _editProduct.id,
                            title: _editProduct.title,
                            description: value.toString(),
                            imageUrl: _editProduct.imageUrl,
                            price: _editProduct.price);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter the price",
                        labelText: "Price",
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      focusNode: _priceFocusNode,
                      onSaved: (value) {
                        _editProduct = Products(
                            id: _editProduct.id,
                            title: _editProduct.title,
                            description: _editProduct.description,
                            imageUrl: _editProduct.imageUrl,
                            price: double.parse(value.toString()));
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: (_imageUrlController.text.isEmpty &&
                                  !Uri.parse(_imageUrlController.text)
                                      .isAbsolute)
                              ? const Center(child: Text("Enter image url"))
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:
                                      Image.network(_imageUrlController.text)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter the image url",
                              labelText: "Image url",
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.0),
                              ),
                            ),
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.url,
                            focusNode: _imageFocusNode,
                            controller: _imageUrlController,
                            onEditingComplete: () {
                              setState(() {});
                            },
                            onFieldSubmitted: (_imageUrlController) {
                              FocusScope.of(context).unfocus();
                            },
                            onSaved: (value) {
                              _editProduct = Products(
                                  id: _editProduct.id,
                                  title: _editProduct.title,
                                  description: _editProduct.description,
                                  imageUrl: value.toString(),
                                  price: _editProduct.price);
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
