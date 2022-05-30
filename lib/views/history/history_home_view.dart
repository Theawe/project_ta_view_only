import 'package:flutter/material.dart';

class HistoryHomeView extends StatelessWidget {
  const HistoryHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ExpansionTile(
                  expandedAlignment: Alignment.topLeft,
                  childrenPadding: EdgeInsets.all(16),
                  title: Text(
                    '9 Mei 2022',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Penjualan'),
                  children: [
                    Row(
                      children: [
                        Text('Kasir John Doe'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1.'),
                        Text('Paha'),
                        Text('1000 gr'),
                        Text('Rp.36.000')
                      ],
                    ),
                    Row(
                      children: [
                        Text('Total Rp.36.000'),
                      ],
                    ),
                    // Container(
                    //   // width: 500,
                    //   height: 500,
                    //   color: Colors.blueAccent,
                    //   alignment: AlignmentDirectional.topStart,
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     children: [
                    //       Container(
                    //         color: Colors.black,
                    //         child: Text(
                    //           'Kasir: John Doe',
                    //           textAlign: TextAlign.end,
                    //         ),
                    //       ),
                    //       Expanded(
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: [
                    //             Text('1.'),
                    //             Text('Paha'),
                    //             Text('1000 gr'),
                    //             Text('Rp.36.000')
                    //           ],
                    //         ),
                    //       ),
                    //       Text('Total'),
                    //     ],
                    //   ),
                    // )
                  ],
                );
              },
              itemCount: 5,
            ),
          ),
        ),
      ),
    );
  }
}
