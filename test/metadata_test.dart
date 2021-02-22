import 'package:eth_contract_metadata/metadata.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:test/test.dart';

void main() {
  // for flutter:
  TestWidgetsFlutterBinding.ensureInitialized();

  ///
  test('parse json file:', () async {
    var result = await parseJsonFile();
    print('json file result: $result');
  });
}
