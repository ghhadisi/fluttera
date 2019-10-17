
import 'package:json_annotation/json_annotation.dart';
// user_entity2.g.dart 将在我们运行生成命令后自动生成
//  命令 flutter packages pub run build_runner build
part 'user_entity2.g.dart';
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class UserEntity2 {
	int id;
	String title;
	String body;
	int userId;

	UserEntity2({this.id, this.title, this.body, this.userId});


//不同的类使用不同的mixin即可
	factory UserEntity2.fromJson(Map<String, dynamic> json) => _$UserEntity2FromJson(json);
	Map<String, dynamic> toJson() => _$UserEntity2ToJson(this);

//	UserEntity2.fromJson(Map<String, dynamic> json) {
//		id = json['id'];
//		title = json['title'];
//		body = json['body'];
//		userId = json['userId'];
//	}
//
//	Map<String, dynamic> toJson() {
//		final Map<String, dynamic> data = new Map<String, dynamic>();
//		data['id'] = this.id;
//		data['title'] = this.title;
//		data['body'] = this.body;
//		data['userId'] = this.userId;
//		return data;
//	}
}
