import 'package:flutter/material.dart';

import 'widget/detail_movie_tabbar.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({super.key});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 30, 33),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          '{movie.title}',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(137, 196, 192, 192)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
                // isFavorite = !isFavorite;
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                size: 40,
                color: isFavorite ? Colors.red : Colors.grey,
              ))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 310,
            color: Colors.amber[600],
            child: Center(
                child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                // Image.network(
                //   movie.img_poster.toString(),
                //   width: 200,
                //   height: 250,
                //   fit: BoxFit.cover,
                // ),
                SizedBox(height: 16),
                Text(
                  //movie.title.toString(),
                  "sdas",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ),
          Container(
            height: 500,
            color: Color.fromARGB(255, 43, 55, 62),
            child: DefaultTabController(
              length: 3, // Number of tabs
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        text: 'รายละเอียด',
                      ),
                      Tab(text: 'นักแสดง'),
                      Tab(text: 'รีวิว'),
                    ],
                    labelStyle: TextStyle(
                      color: const Color.fromRGBO(
                          255, 255, 255, 225), // Selected tab color
                    ),
                    unselectedLabelStyle: TextStyle(
                      color: Colors.black, // Unselected tab color
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        DetailMovieTabbar(),
                        Center(child: Text('Tab 2 content')),
                        Center(child: Text('Tab 3 content')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
