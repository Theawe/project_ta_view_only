import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ta_view_only/views/product/widgets/list_product_widget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProductHomeView extends StatelessWidget {
  const ProductHomeView({Key? key}) : super(key: key);

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
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(16.0), child: ListProductWidget()),
            ),
          ],
        ),
      ),
    );
  }
}

_onBasicAlertPressed(context) {
  Alert(
    context: context,
    title: "RFLUTTER ALERT",
    desc: "Flutter is more awesome with RFlutter Alert.",
  ).show();
}

// Alert custom content
_onAlertWithCustomContentPressed(context) {
  Alert(
      context: context,
      title: "LOGIN",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: 'Username',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
