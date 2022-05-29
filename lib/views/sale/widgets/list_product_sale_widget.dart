import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProductSaleWidget extends StatelessWidget {
  const ListProductSaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Quantity'),
              content: TextField(
                decoration: InputDecoration(hintText: 'Enter quantity'),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Submit'))
              ],
            ));

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                openDialog();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: GridTile(
                  child: Image.network(
                    'https://yoursayur.com/wp-content/uploads/2021/09/Paha-ayam-broiler.jpg',
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.white,
                    title: Text('Paha Ayam',
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Rp. 18.000',
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // footer: GridTileBar(
                  //   backgroundColor: Colors.black54,
                  //   title: Text(
                  //     people.elementAt(index).name,
                  //     style: const TextStyle(
                  //         fontSize: 18, fontWeight: FontWeight.bold),
                  //   ),
                  //   subtitle: Text(people.elementAt(index).description),
                  // ),
                ),
              ),
            ),
            // decoration: BoxDecoration(
            //     color: Colors.amber, borderRadius: BorderRadius.circular(15)),
          );
        });
  }
}
