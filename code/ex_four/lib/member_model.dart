import 'dart:convert';
import 'dart:io';

class Member {
  final String name;
  final String bio;
  final String site;
  String profileImage;
  List socialLinks;

  Member(this.name, this.bio, this.site, this.socialLinks);

  /// Load a random image of a dog and set as profile photo
  Future getProfilePhoto() async {
    if (profileImage != null) {
      return;
    }

    // We use an open source API to collect images from a JSON response
    HttpClient http = HttpClient();
    try {
      var uri = Uri.http('dog.ceo', '/api/breeds/image/random');
      var request = await http.getUrl(uri);
      var response = await request.close();
      var responseBody = await response.transform(utf8.decoder).join();

      profileImage = json.decode(responseBody)['message'];
    } catch (exception) {
      print(exception);
    }
  }
}

