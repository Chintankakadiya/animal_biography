import 'dart:typed_data';

import 'package:http/http.dart' as http;

class ImageAPIHelper {
  ImageAPIHelper._();

  static ImageAPIHelper imageAPIHelper = ImageAPIHelper._();

  Future<Uint8List?> getImage({required String search}) async {
    http.Response image = await http.get(
      Uri.parse("https://source.unsplash.com/random/?$search"),
    );

    if (image.statusCode == 200) {
      return image.bodyBytes;
    }
    return null;
  }
}
