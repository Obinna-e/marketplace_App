class NftModel {
  String artist;
  String header;
  String subheading;
  String price;
  String imageurl;

  NftModel({
    required this.artist,
    required this.header,
    required this.subheading,
    required this.price,
    required this.imageurl,
  });

  factory NftModel.fromJson(Map<String, dynamic> json) {
    return NftModel(
        artist: json['artist'],
        header: json['header'],
        subheading: json['subheading'],
        price: json['price'],
        imageurl: json['image-url']);
  }

  Map<String, dynamic> toJson() => {
        'artist': artist,
        'header': header,
        'subheading': subheading,
        'price': price,
        'image-url': imageurl,
      };
}
