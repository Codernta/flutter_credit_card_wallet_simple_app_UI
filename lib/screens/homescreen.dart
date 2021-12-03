import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloflutter/cardsdetail/CardModel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              //Custom Appbar
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print('Drawer Button Clicked');
                      },
                      child: SvgPicture.asset('svg/align-left.svg',
                          color: Colors.blue[900]),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage('images/profileimage.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Welcome Note
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Good Morning',
                      style: TextStyle(fontSize: 17, color: Colors.blue[900]),
                    ),
                    Text(
                      'Alex Peter',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(cards[index].cardBackground),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child:
                                SvgPicture.asset(cards[index].cardElementTop),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                                cards[index].cardElementBottom),
                          ),
                          Positioned(
                              left: 30,
                              top: 45,
                              child: Text('CARD NUMBER',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          Positioned(
                              left: 30,
                              top: 65,
                              child: Text(cards[index].cardNumber,
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          Positioned(
                            right: 21,
                            top: 35,
                            child: Image.asset(cards[index].cardType,
                                width: 40, height: 40),
                          ),
                          Positioned(
                            left: 29,
                            bottom: 45,
                            child: Text('CARD HOLDERNAME',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Positioned(
                            left: 29,
                            bottom: 21,
                            child: Text(cards[index].user,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Positioned(
                            left: 300,
                            bottom: 45,
                            child: Text('EXPIRY DATE',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Positioned(
                            left: 300,
                            bottom: 21,
                            child: Text(cards[index].cardExpired,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
      bottomNavigationBar: GestureDetector(
        onTap: () {},
        child: Container(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(IconlyLight.plus, color: Colors.blue[900]),
              Text(
                'Add New Card',
                style: TextStyle(color: Colors.blue[900]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
