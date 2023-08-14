import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class sliverScreen extends StatefulWidget {

  const sliverScreen({super.key});

  @override
  State<sliverScreen> createState() => _sliverScreenState();
}

class _sliverScreenState extends State<sliverScreen> {
  String results = "";


  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    leading: Icon(Icons.menu_rounded),
                    title: Text(
                      "Sliver App",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    actions: [Icon(Icons.more_vert_rounded)],
                    expandedHeight: 150,
                    collapsedHeight: 90,
                    pinned: true,
                    floating: true,
                    flexibleSpace: Align(
                      alignment: Alignment.centerLeft,
                      child: FlutterLogo(size: 80),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent.shade200),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.tealAccent.shade200),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pinkAccent.shade200),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.yellowAccent.shade200),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent.shade200),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.tealAccent.shade200),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pinkAccent.shade200),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.yellowAccent.shade200),
                        ),
                      ],
                    ),
                  ),
                  SliverGrid(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Container(
                          margin: EdgeInsets.all(15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.redAccent.shade200),
                        );
                      }, childCount: 10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextField(
                      decoration:
                          InputDecoration(hintText: "Enter text here..."),
                      onSubmitted: (String str) {
                        setState(() {
                          results = results + "\n" + str;
                          controller.text = "";
                        });
                        print(results);
                      },
                      controller: controller,
                    ),
                    Text(
                      "${results}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              },
              onRatingUpdate: (value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
