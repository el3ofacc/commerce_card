 

class devicemodel {
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  devicemodel(
      {this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  devicemodel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    
    urlToImage = json['urlToImage'];
 
    content = json['content'];
  }
}
