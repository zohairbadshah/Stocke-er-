import 'package:flutter/material.dart';
import 'package:stocker/my_flutter_app_icons.dart';
import 'widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Avatar(image: 'z'),
            ),
            Icon(Icons.more_horiz)
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 40, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white30,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "\$23,984.34",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: SizedBox(
                  width: 70,
                  height: 30,
                  child: TextButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    side: BorderSide(color: Colors.black))),
                        backgroundColor: MaterialStateProperty.all(
                            Color(0xFF95E4A3).withOpacity(0.3)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.trending_up,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              "112%",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                print("pressed");
              },
              child: Container(
                height: 150.0,
                width: 150,
                margin: new EdgeInsets.only(left: 20.0),
                decoration: new BoxDecoration(
                  color: new Color(0xFF615757).withOpacity(0.3),
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: AssetImage("images/stock.jpg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: new Offset(0.0, 10.0),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print("pressed");
              },
              child: Container(
                height: 150.0,
                width: 150,
                margin: new EdgeInsets.only(left: 20.0),
                decoration: new BoxDecoration(
                  color: new Color(0xFF615757).withOpacity(0.3),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("images/bitcoin.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: new BorderRadius.circular(30.0),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: new Offset(0.0, 10.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
          child: Text(
            "My Assets",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Assets_Card(),
              Assets_Card(),
              Assets_Card(),
            ],
          ),
        ),
      ],
    );
  }
}
