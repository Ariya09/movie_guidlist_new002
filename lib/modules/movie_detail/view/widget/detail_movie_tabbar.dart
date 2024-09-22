import 'package:flutter/material.dart';

class DetailMovieTabbar extends StatefulWidget {
  const DetailMovieTabbar({super.key});

  @override
  State<DetailMovieTabbar> createState() => _DetailMovieTabbarState();
}

class _DetailMovieTabbarState extends State<DetailMovieTabbar> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textTitle("เรื่องย่อ", 15),
            Text(
              ' {movie.movieInfo}',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            textDetaiil("วันที่เข้าฉาย", "detail"),
            textDetaiil("เรทของภาพยนต์", "detail"),
            textDetaiil("ระยะเวลา", "detail"),
            textDetaiil("ภาษาต้นฉบับ", "detail"),
            textDetaiil("ผู้กำกับ", "detail"),
            textDetaiil("ผู้ผลิต", "detail"),
            textDetaiil("ผู้เขียนบท", "detail"),
            textDetaiil("ผู้จัดจำหน่าย", "detail"),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            textTitle("ดูได้ที่", 18),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Container(
              color: Colors.red,
              // child: Row(
              //   children: [
              //     Expanded(child: Text("data")
              //         //      ListView.builder(
              //         //   itemCount: 3,
              //         //   itemBuilder: (context, index) {
              //         //     return Text("data");
              //         //   },
              //         // )
              //         )
              //   ],
              // ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    // child: Image.asset(images[index]),
                    child: Text("data"),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textDetaiil(label, detail) {
    return Text(
      "$label : $detail",
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Color.fromARGB(255, 255, 255, 255)),
    );
  }

  Widget textTitle(label, double size) {
    return Text(
      "$label :",
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255)),
    );
  }

  Widget CardChanel(Size screensize) {
    return Container(
      color: Colors.green,
      height: screensize.height * 0.5,
      child: Icon(Icons.abc),
    );
  }
}
