import 'package:flutter/material.dart';
import 'package:project_ta_view_only/views/sale/widgets/keranjang_widget.dart';
import 'package:project_ta_view_only/views/sale/widgets/list_product_sale_widget.dart';
import 'package:project_ta_view_only/views/sale/widgets/total_widget.dart';

class SaleView extends StatelessWidget {
  const SaleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    width: 500,
                    height: 100,
                    child: Row(children: [
                      Icon(Icons.search),
                      Expanded(child: TextField()),
                    ])),
              ),
              Container(
                  padding: EdgeInsets.all(16.0),
                  width: 500,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListProductSaleWidget()),
            ]),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 400,
                    child: KeranjangWidget(),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Container(
                  height: 110,
                  width: 400,
                  child: TotalWidget(),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
