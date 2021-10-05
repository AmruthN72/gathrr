import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> items = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60,
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Color(0xFF5663FF),
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_outline,
                    color: Color(0xFF5663FF),
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFF5663FF),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFF5663FF),
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: Color(0xFF5663FF),
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Color(0xFFE9E9E9), width: 1.5),
                            borderRadius: BorderRadius.circular(9)),
                        child: ListTile(
                          horizontalTitleGap: 10,
                          minLeadingWidth: 0,
                          minVerticalPadding: 0,
                          leading: Icon(
                            Icons.search_outlined,
                            color: Color(0xFF909DBE),
                            size: 30,
                          ),
                          title: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Color(0xFF909DBE),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                                hintText: 'Find Events'),
                          ),
                          trailing: Icon(
                            Icons.filter_alt_outlined,
                            color: Color(0xFF909DBE),
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0, top: 15),
                        child: Text(
                          'Trending Events',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[100],
                  ),
                  height: 260,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: EventCard('images/pic1.jpg'),
                      ),
                      SizedBox(
                        width: 20,
                        child: Container(
                          color: Colors.grey[50],
                        ),
                      ),
                      EventCard('images/pic2.jpg')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 25, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Category',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.1),
                            ),
                            Text(
                              'See All (40)',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          CategoryCard('MeetUp'),
                          CategoryCard('StartUp'),
                          CategoryCard('College')
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Network',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.1),
                            ),
                            Text(
                              'See All (29)',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          MyNetworkCard(),
                          MyNetworkCard(),
                          MyNetworkCard(),
                          MyNetworkCard(),
                          MyNetworkCard(),
                          MyNetworkCard(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyNetworkCard extends StatelessWidget {
  const MyNetworkCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.5),
      child: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage('images/pic4.jpg'),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.5),
      child: Container(
        height: 99,
        width: 99,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstOut),
                image: AssetImage(
                  'images/pic3.jpg',
                ),
                fit: BoxFit.fill),
            color: Colors.red,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  EventCard(this.imageName);
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 260,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(spreadRadius: 2, color: Color(0xFFC4C4C4), blurRadius: 15)
        ],
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(imageName), fit: BoxFit.fill),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              minVerticalPadding: 0,
              tileColor: Colors.transparent,
              leading: Container(
                height: 22,
                width: 45,
                child: Center(
                  child: Text(
                    '30-03',
                    style: TextStyle(
                        color: Colors.green[300],
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
              ),
              trailing: Container(
                height: 22,
                width: 45,
                child: Center(
                  child: Text(
                    '⭐4.5',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          ' Pune Meetup',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 0.5),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 17,
                            width: 40,
                            child: Center(
                              child: Text(
                                'Paid',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.orangeAccent,
                                      Colors.orange
                                    ]),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Container(
                          height: 17,
                          width: 40,
                          child: Center(
                            child: Text(
                              '1.2 km',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0x994A4AD4),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '  Bhau Institute, Shivajinagar, Pune',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
