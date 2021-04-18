import 'package:flutter/material.dart';
import 'package:juju_travel_apps/theme.dart';
import 'package:juju_travel_apps/widget/category_item.dart';
import 'package:juju_travel_apps/widget/navbar_item.dart';
import 'package:juju_travel_apps/widget/popular_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: Text(
          'Jakarta, Indonesia',
          style: regularTextStyle,
        ),
        leading: Icon(
          Icons.location_on_rounded,
          color: blackColor,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
              )),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffFFFFFF),
                        Color(0xffDCD8D8),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Hi Defeny",
                          style: boldTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Explore the vacation",
                          style: boldTextStyle.copyWith(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 279,
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFF6F6F6),
                                  blurRadius: 11,
                                  offset: Offset(6, 7), // Shadow position
                                ),
                              ],
                            ),
                            child: new TextField(
                              decoration: new InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                border: InputBorder.none,
                                hintText: "Search...",
                                fillColor: whiteColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFF6F6F6), width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Color(0xFFF6F6F6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffAB90F8),
                                  Color(0xff774FE2),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(
                                11.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffA68CEE),
                                  blurRadius: 11,
                                  offset: Offset(6, 7), // Shadow position
                                ),
                              ],
                            ),
                            child: FlatButton(
                                onPressed: () {
                                  // Navigator.pushAndRemoveUntil(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => HomeScreen(),
                                  //     ),
                                  //     (route) => false);
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: Image.asset(
                                  'assets/Filter.png',
                                  width: 30,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryItem(
                              name: 'Hotel',
                              imageUrl: 'assets/hotel.png',
                            ),
                            CategoryItem(
                              name: 'Event',
                              imageUrl: 'assets/event.png',
                            ),
                            CategoryItem(
                              name: 'Campings',
                              imageUrl: 'assets/camping.png',
                            ),
                            CategoryItem(
                              name: 'Trips',
                              imageUrl: 'assets/trips.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Places",
                              style: boldTextStyle.copyWith(fontSize: 24),
                            ),
                            Text(
                              "View all",
                              style: purpleTextStyle.copyWith(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 185,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              PopularItem(
                                imageUrl: 'assets/p1.jpg',
                                place: 'Moscow Place',
                                country: 'Russia',
                                rating: '5.0',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PopularItem(
                                imageUrl: 'assets/p2.jpg',
                                place: 'Nusa Penida Bali',
                                country: 'Indonesia',
                                rating: '5.0',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PopularItem(
                                imageUrl: 'assets/p3.jpg',
                                place: 'Kiyozumi Dera',
                                country: 'Japan',
                                rating: '4.5',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PopularItem(
                                imageUrl: 'assets/p4.jpg',
                                place: 'Phra Nang Beach',
                                country: 'Thailand',
                                rating: '4.0',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recomended Places",
                              style: boldTextStyle.copyWith(fontSize: 24),
                            ),
                            Text(
                              "View all",
                              style: purpleTextStyle.copyWith(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 195,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              PopularItem(
                                imageUrl: 'assets/p4.jpg',
                                place: 'Phra Nang Beach',
                                country: 'Thailand',
                                rating: '4.0',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PopularItem(
                                imageUrl: 'assets/p3.jpg',
                                place: 'Kiyozumi Dera',
                                country: 'Japan',
                                rating: '4.5',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PopularItem(
                                imageUrl: 'assets/p1.jpg',
                                place: 'Moscow Place',
                                country: 'Russia',
                                rating: '5.0',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PopularItem(
                                imageUrl: 'assets/p2.jpg',
                                place: 'Nusa Penida Bali',
                                country: 'Indonesia',
                                rating: '5.0',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PopularItem(
                                imageUrl: 'assets/p3.jpg',
                                place: 'Kiyozumi Dera',
                                country: 'Japan',
                                rating: '4.5',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/home.png',
              name: 'Home',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/explorer.png',
              name: 'Explorer',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/ticket.png',
              name: 'Ticket',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/profile.png',
              name: 'Profile',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
