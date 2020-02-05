class Stories{
  final String name;
  final String imageUrl;
  final bool yourStory;
  final bool isLive;
  final bool wasLive;
  final bool watched;
  Stories({this.name,this.imageUrl,this.yourStory,this.isLive,this.wasLive,this.watched});
}

List<Stories> stories=[
  new Stories(
    name: "Your Story",
    yourStory: false,
    imageUrl: "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", 
  ),
  new Stories(
      name: "ajeetRt",
      isLive: true,
      imageUrl:"https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new Stories(
      name: "tanujLk",
      wasLive: true,
      imageUrl:
          "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new Stories(
      name: "souravksp",
      isLive: false,
      imageUrl:
          "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new Stories(
      name: "abhiRth",
      imageUrl:
          "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new Stories(
      name: "anveshHrs",
      imageUrl:
          "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new Stories(
      name: "Raushan Jha",
      watched: true,
      imageUrl:
          "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new Stories(
      name: "nitesh",
      watched: true,
      imageUrl:
          "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  new Stories(
      name: "kaushal",
      watched: true,
      imageUrl:
          "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
];