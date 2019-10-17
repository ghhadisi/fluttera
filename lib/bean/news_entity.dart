class NewsEntity {
	String date;
	String authorName;
	String thumbnailPicS;
	String uniquekey;
	String title;
	String category;
	String url;

	NewsEntity({this.date, this.authorName, this.thumbnailPicS, this.uniquekey, this.title, this.category, this.url});

	NewsEntity.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		authorName = json['author_name'];
		thumbnailPicS = json['thumbnail_pic_s'];
		uniquekey = json['uniquekey'];
		title = json['title'];
		category = json['category'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = this.date;
		data['author_name'] = this.authorName;
		data['thumbnail_pic_s'] = this.thumbnailPicS;
		data['uniquekey'] = this.uniquekey;
		data['title'] = this.title;
		data['category'] = this.category;
		data['url'] = this.url;
		return data;
	}
}
