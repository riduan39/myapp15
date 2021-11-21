import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp15/homepage%202.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: Colors.teal,
                child: Text(
                  "Go",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 250,
                              width: 350,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Riduan",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Divider(),
                                  RichText(
                                    text: TextSpan(
                                        text:
                                            "from cox's bazar,from cox's bazar,from cox's bazar",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.cyan),
                                        children: [
                                          TextSpan(
                                              text:
                                                  "cox's bazar,from cox's bazar,from cox's bazar",
                                              style:
                                                  TextStyle(color: Colors.red)),
                                        ]),
                                  ),
                                  CircleAvatar(
                                      radius: 30,
                                      child: GestureDetector(
                                        child: Hero(
                                            tag: "tag",
                                            child: Icon(
                                              Icons.home,
                                              size: 20,
                                            )),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage2(),));
                                        },
                                      )),
                                ],
                              ),
                            ),
                            Positioned(
                                top: -50,
                                child: CircleAvatar(
                                  radius: 40,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    child: Image.network(
                                        "https://scontent.fcgp27-1.fna.fbcdn.net/v/t1.6435-9/82037376_1903140449829300_1917833129662349312_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_eui2=AeG8JuYBSCKFXtwXWukmQVn1uY-ITQFGzTO5j4hNAUbNM9EyGjzlNAV6qzQZZlb0R8uCUgN_XvlOEWafO8d_mVG0&_nc_ohc=RS2-cYf-MVEAX-1t2YO&_nc_ht=scontent.fcgp27-1.fna&oh=acafeeefc9da227272f105d39c47a66e&oe=61B77080"),
                                  ),
                                ))
                          ],
                        ),
                      );
                    },
                  );
                })
          ],
        ),
      ),
    ));
  }
}
