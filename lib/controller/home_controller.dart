import 'package:get/get.dart';
import '../models/OnBoard.dart';

class HomeController extends GetxController {
  final List<OnBoard> demoData = [
    OnBoard(
      image: 'assets/svg/undraw_traveling_yhxq.svg', // Replace with actual asset path
      title: "Explore the World",
      description: "Discover new places and expand your horizon.",
    ),
    OnBoard(
      image: 'assets/svg/undraw_booking_re_gw4j.svg', // Replace with actual asset path
      title: "Find the Comfort of Your Home",
      description: "Book a place that feels like home all around the globe.",
    ),
    OnBoard(
      image: 'assets/svg/undraw_eiffel_tower_re_e11r.svg', // Replace with actual asset path
      title: "Live Like a Local",
      description: "Experience life from the perspective of a local resident.",
    ),
    OnBoard(
      image: 'assets/svg/undraw_walking_together_7ulo.svg', // Replace with actual image asset
      title: "Make Memories with Unique Experiences",
      description: "Don’t just visit—explore! Book local experiences and activities to make your stay unforgettable.",
    ),
  ];

  // Reactive variable to keep track of the current page index
  var currentPage = 0.obs;

  // Method to change the current page index
  void setCurrentPage(int index) {
    currentPage.value = index;
  }
}