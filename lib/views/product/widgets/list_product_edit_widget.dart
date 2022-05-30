import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ListProductEditWidget extends StatelessWidget {
  const ListProductEditWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(alignment: AlignmentDirectional.topEnd, children: [
                    Image.network(
                      'https://yoursayur.com/wp-content/uploads/2021/09/Paha-ayam-broiler.jpg',
                      fit: BoxFit.contain,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                    ),
                  ]),
                  //Edit yah
                  Text('Paha'),
                  Text('Rp.18.000'),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            _productEdit(context);
                          },
                          child: const Text(
                            'Edit',
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
            ),
          );
        });
  }
}

_productEdit(context) {
  Alert(
    context: context,
    title: "EDIT PRODUCT",
    content: Column(children: <Widget>[
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
    ]),
  ).show();
}
