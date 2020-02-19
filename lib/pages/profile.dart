import 'package:flutter/material.dart';
import 'package:instagram_clone/conts/urls.dart';
import 'package:instagram_clone/widgets/customButton.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "uttam_laila",
              style: TextStyle(fontSize: 14),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: <Widget>[Icon(Icons.menu)],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(profiledp_url)),
                            color: Colors.white),
                      ),
                      Positioned(
                          height: 24,
                          width: 24,
                          bottom: 0,
                          right: 0,
                          child: FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.add,
                              ),
                              backgroundColor: Colors.blue))
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "1000",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "1M",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              child: Text(
                "Uttam Laila",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                callbackAction: () {},
                buttonColors: Colors.transparent,
                width: MediaQuery.of(context).size.width / 1.1,
                title: 'Edit Profile',
                textColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: FloatingActionButton(
                      child: Icon(Icons.add),
                      backgroundColor: Colors.black,
                      onPressed: null,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(
                        "New",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.grid_on,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.tag_faces,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(40, (index) {
                  return Card(
                    child: Image.network("https://i.picsum.photos/id/${400+index}/200/200.jpg"),
                  ); //robohash.org api provide you different images for any number you are giving
                }),
              ),
              // child: ListView.builder(
              //   itemCount: 100,
              //   itemBuilder: (BuildContext context,int index){
              //     return ListTile(title: Text("data", style: TextStyle(color: Colors.white),),);
              //   },
              // ),
            )
          ],
        ),
      ),
    );
  }
}
