import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ta_view_only/core/controllers/productController.dart';
import 'package:project_ta_view_only/views/product/widgets/list_product_edit_widget.dart';
import 'package:project_ta_view_only/views/product/widgets/list_product_widget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProductHomeView extends StatelessWidget {
  ProductHomeView({Key? key}) : super(key: key);

  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Tambah Barang'),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(hintText: 'Enter quantity'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Enter quantity'),
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Submit'))
              ],
            ));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          Icon(Icons.search),
                          Expanded(child: TextField()),
                        ])),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _onAlertWithCustomContentPressed(context);
                    },
                    child: const Text(
                      'Tambah',
                      style: TextStyle(color: Colors.white),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Obx(() {
                      return productController.editMode == false
                          ? ElevatedButton(
                              onPressed: () {
                                productController.changeMode();
                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Colors.white),
                              ))
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              onPressed: () {
                                productController.changeMode();
                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Colors.blueAccent),
                              ));
                    }))
              ],
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Obx(() {
                    return productController.editMode == false
                        ? ListProductWidget()
                        : ListProductEditWidget();
                  })),
            ),
          ],
        ),
      ),
    );
  }
}

_editHarga(context) {
  Alert(
    context: context,
    title: "Edit Harga",
    desc: "Flutter is more awesome with RFlutter Alert.",
  ).show();
}

// Alert custom content
_onAlertWithCustomContentPressed(context) {
  Alert(
      context: context,
      // title: "LOGIN",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.store),
              labelText: 'Nama Produk',
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.money),
              labelText: 'Harga Produk',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "SIMPAN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
