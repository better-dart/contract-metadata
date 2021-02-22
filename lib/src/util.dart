import 'package:flutter/services.dart';

///
/// json file:
///
final jsonFile = 'contract-map.json';

///
/// parse mapping list:
///
// 读取 assets 配置资源文件:
Future<String> parseJsonFile() async {
  print('filename:$jsonFile');
  return await rootBundle.loadString(jsonFile);
}
