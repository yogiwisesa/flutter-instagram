import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 1.5,
        backgroundColor: Colors.white,
        title: new Center(
          child: new Text(
            "Instagram",
            style: new TextStyle(color: Colors.black),
          ),
        ),
        leading: new IconButton(
          icon: new Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.message,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[new PostItem(), new PostItem()],
        ),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        _buildUserprofile(),
        _buildUserPost(),
        _buildActionButtons()
      ],
    );
  }

  Widget _buildUserprofile() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            backgroundColor: Colors.black,
            radius: 24.0,
          ),
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new Text("Yogi Wisesa"),
            ),
          ),
          new IconButton(
            icon: new Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildUserPost() {
    return new Container(child: Placeholder());
  }

  Widget _buildActionButtons() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Row(
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.mode_comment,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: new Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          )),
          new IconButton(
            icon: new Icon(
              Icons.bookmark_border,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
