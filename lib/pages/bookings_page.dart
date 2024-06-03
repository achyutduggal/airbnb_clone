import 'package:airbnb_clone/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class bookingPage extends StatefulWidget {
  const bookingPage({super.key});

  @override
  State<bookingPage> createState() => _bookingPageState();
}

class _bookingPageState extends State<bookingPage> {
  @override
  Widget build(BuildContext context) {
    return ticketView();
  }
}
