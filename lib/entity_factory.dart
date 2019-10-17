import 'package:fluttera/bean/user_entity.dart';
import 'package:fluttera/bean/news_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "UserEntity") {
      return UserEntity.fromJson(json) as T;
    } else if (T.toString() == "NewsEntity") {
      return NewsEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}