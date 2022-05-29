import 'package:flutter/material.dart';

class KeranjangWidget extends StatelessWidget {
  const KeranjangWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Keranjang',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return productOnCart();
            },
            itemCount: 3,
          ),
        ),
        // Expanded(
        //   // flex: 5,
        //   child: ListView.builder(
        //     itemBuilder: (context, index) {
        //       return productOnCart();
        //     },
        //     itemCount: 3,
        //   ),
        // ),
        // productOnCart()
      ],
    );
  }

  Container productOnCart() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      height: 100,
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Image.network(
                'https://yoursayur.com/wp-content/uploads/2021/09/Paha-ayam-broiler.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.contain),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Paha'), Text('Rp.18.000'), Text('1000 gr')],
          ),
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Container(
                height: 100,
                width: 60,
                color: Colors.red,
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
