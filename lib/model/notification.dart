class notification{
  final List<String> name;
  final String action;
  // final String when;
  final List<String> imageURL; 
  final String actionedImageUrl;
  final String tag;
  final List<String> tagImages;
  notification({this.name,this.action,this.imageURL,this.actionedImageUrl,this.tag,this.tagImages});
}

List<notification> today=[
  new notification(
    name: ["chubby05","rohanAg","mohiniKR","sona02","riit11"],
    imageURL: [
      "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ],
    action: "started following you",
  ),
];

List<notification> yesterday=[
  new notification(
    name:["mohanSi"],
    imageURL: ["https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "started following you",
  ),
  new notification(
    name:["mohanSi","aahem"],
    imageURL: [
      "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    ],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  new notification(
    name:["ramu1234"],
    imageURL: ["https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "started following you",
  ),
  new notification(
    imageURL: ["https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "You Liked",
    tag: "#arts",
    tagImages: [
      "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    ]
  ),
  new notification(
    name:["souravRw"],
    imageURL: ["https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),
];

List<notification> month=[
  new notification(
    name:["mohanSi","aahem"],
    imageURL: [
      "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    ],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  new notification(
    imageURL: ["https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "You Liked",
    tag: "#bolywood",
    tagImages: [
      "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    ]
  ),
  new notification(
    name:["souravRw"],
    imageURL: ["https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),
  new notification(
    name: ["chubby05","rohanAg"],
    imageURL: [
      "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ],
    action: "started following you",
  ),
  new notification(
    name:["mohanSi"],
    imageURL: ["https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "started following you",
  ),
];

List<notification> eariler=[
  new notification(
    name:["mohanSi","aahem"],
    imageURL: [
      "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    ],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  new notification(
    name:["mohanSi","aahem"],
    imageURL: [
      "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    ],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  new notification(
    name:["souravRw"],
    imageURL: ["https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),
  new notification(
    name:["souravRw"],
    imageURL: ["https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"],
    action: "liked your photo",
    actionedImageUrl: "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ),
  new notification(
    name: ["chubby05","rohanAg"],
    imageURL: [
      "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ],
    action: "started following you",
  ),
];