import 'package:airbnb_clone/pages/bookings_page.dart';
import 'package:airbnb_clone/pages/home_page.dart';
import 'package:airbnb_clone/pages/search_page.dart';
import 'package:flutter/material.dart';

class BottomNavBarFb5 extends StatelessWidget {
  const BottomNavBarFb5({Key? key}) : super(key: key);

  // Updated color scheme to match InfoCard
  final primaryColor = const Color(0xff2196F3); // Light Blue
  final secondaryColor = const Color(0xff4CAF50); // Green
  final accentColor = const Color(0xffffffff); // White

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Updated gradient colors
        gradient: LinearGradient(colors: [const Color(0xff5e503f), const Color(0xff344e41)]),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 54,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0,bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconBottomBar(
                    text: "Home",
                    icon: Icons.home,
                    selected: true,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));
                    }),
                IconBottomBar(
                    text: "Search",
                    icon: Icons.search_outlined,
                    selected: false,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage()));
                    }),
                IconBottomBar(
                    text: "Bookings",
                    icon: Icons.airplane_ticket_outlined,
                    selected: false,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => bookingPage()));
                    }),
                IconBottomBar(
                    text: "Calendar",
                    icon: Icons.date_range_outlined,
                    selected: false,
                    onPressed: () {
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  // Updated color scheme
  final primaryColor = const Color(0xff2196F3); // Light Blue
  final accentColor = const Color(0xffffffff); // White

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon, size: 25, color: selected ? accentColor : Colors.white70),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            height: .1,
            color: selected ? accentColor : Colors.white70,
          ),
        )
      ],
    );
  }
}
