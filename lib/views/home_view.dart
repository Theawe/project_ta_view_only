import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        // backgroundColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwyMzQ5ODgwfHxlbnwwfHx8fA%3D%3D&w=1000&q=80'),
                )),
            ListTile(
              title: const Text(
                'Akun Kasir',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'John Doe',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // fixedSize: const Size(240, 80),
                    primary: Colors.red,
                    padding: EdgeInsets.all(16.0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'logout',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 10),
        children: [
          menuItem('Penjualan'),
          menuItem('Riwayat'),
          menuItem('Riwayat'),
          menuItem('Riwayat'),
          menuItem('Riwayat'),
          menuItem('Riwayat'),
          menuItem('Riwayat'),
        ],
      ),
      // body: Center(
      //   child: Container(
      //     decoration: BoxDecoration(),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           child: Image.network(
      //             'https://cdn1-production-images-kly.akamaized.net/rdpOcssrfFWy9t8FESyNhFkg7QA=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3195933/original/094731700_1596206149-Ilustrasi_ayam_2.jpg',
      //             height: 250,
      //             width: 250,
      //           ),
      //         ),
      //         Container(
      //           child: Image.network(
      //             'https://cdn1-production-images-kly.akamaized.net/rdpOcssrfFWy9t8FESyNhFkg7QA=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3195933/original/094731700_1596206149-Ilustrasi_ayam_2.jpg',
      //             height: 250,
      //             width: 250,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Container menuItem(String judul) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      alignment: AlignmentDirectional.center,
      child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://cdn1-production-images-kly.akamaized.net/rdpOcssrfFWy9t8FESyNhFkg7QA=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3195933/original/094731700_1596206149-Ilustrasi_ayam_2.jpg',
            height: 250,
            width: 250,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 200),
            child: Text(
              judul,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 20),
              primary: Colors.blueAccent,
              // padding: EdgeInsets.all(16.0),
            ),
            onPressed: () {},
            child: const Text(
              'Tambah',
              style: TextStyle(color: Colors.white),
            )),
      ]),
    );
  }
}
