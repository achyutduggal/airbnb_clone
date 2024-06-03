import 'package:flutter/material.dart';

class ticketView extends StatelessWidget {
  const ticketView({super.key});

  final String date = '2024-01-15';
  final String departure = 'New York';
  final String arrival = 'London';
  final int passengers = 2;
  final String departureTime = '10:00 AM';
  final String airlineLogoUrl ='https://www.kindpng.com/picc/m/286-2861659_lufthansa-logo-hd-png-download.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 4.0,
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: <Widget>[
                Image.network(
                  airlineLogoUrl,
                  height: 60, // Adjust size accordingly
                  width: 60, // Adjust size accordingly
                ),
                const SizedBox(height: 10),
                Text('Date: $date', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 5),
                Text('From: $departure', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 5),
                Text('To: $arrival', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 5),
                Text('Passengers: $passengers', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 5),
                Text('Departure Time: $departureTime',
                    style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
