import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ListProductWidget extends StatelessWidget {
  const ListProductWidget({Key? key}) : super(key: key);

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
                  Image.network(
                    'https://yoursayur.com/wp-content/uploads/2021/09/Paha-ayam-broiler.jpg',
                    fit: BoxFit.contain,
                  ),
                  //Edit yah
                  Text('Paha'),
                  Text('Rp.18.000'),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Edit Harga',
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
            ),
          );
        });
  }
}
