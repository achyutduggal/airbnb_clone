class City {
  String title;
  String subtitle;
  String image;

  City({required this.title, required this.subtitle, required this.image});

}

List<City> cities = [
  City(
      title: "Portland",
      image:
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/airbnb%2Fportland.png?alt=media&token=5679fa53-c854-4833-bfb2-799ad4b83f34",
      subtitle: "1.5 hour drive"),
  City(
      title: "Boston",
      image:
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/airbnb%2Fboston.png?alt=media&token=ddf740c9-0d85-4bd7-8cd3-3732029a3ea1",
      subtitle: "5 hour drive"),
  City(
      title: "Newark",
      image:
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/airbnb%2Fnewark.png?alt=media&token=f845d590-c831-4942-94d0-f2b13c11c339",
      subtitle: "3 hour drive"),
  City(
      title: "New York",
      image:
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/airbnb%2Fny.jpeg?alt=media&token=356763c5-18b1-4e22-96be-448756ae2b1c",
      subtitle: "8 hour drive"),
  City(
      title: "India",
      image:
      "https://static.vecteezy.com/system/resources/previews/001/270/770/original/taj-mahal-india-vector.jpg",
      subtitle: "300 hour drive"),
  City(
      title: "Pakistan",
      image:
      "https://th.bing.com/th/id/OIP.yo_KfiG1ElA3atcfDAELJAHaFj?rs=1&pid=ImgDetMain",
      subtitle: "450 hour drive"),

];
