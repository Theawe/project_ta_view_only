import 'package:flutter/material.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Total',
          style: TextStyle(fontSize: 20),
        ),
        Text('Rp.36.000', style: TextStyle(fontSize: 20)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              // fixedSize: const Size(240, 80),
              primary: Colors.red,
              padding: EdgeInsets.all(16.0),
            ),
            onPressed: () {},
            child: const Text(
              'BAYAR',
              style: TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
