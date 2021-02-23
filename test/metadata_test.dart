import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:eth_contract_metadata/metadata.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // for flutter:
  TestWidgetsFlutterBinding.ensureInitialized();

  ///
  test('parse json file:', () async {
    var result = await parseJsonFile();
    print('json file result: $result');
  });

  ///
  test('gen codes:', () async {
    final animal = Class((b) => b
      ..name = 'Animal'
      ..extend = refer('Organism')
      ..methods.add(Method.returnsVoid((b) => b
        ..name = 'eat'
        ..body = const Code("print('Yum');"))));
    final emitter = DartEmitter();

    ///
    ///
    ///
    print(DartFormatter().format('${animal.accept(emitter)}'));
  });

  ///
  test('gen code2:', () async {
    final library = Library((b) => b.body.addAll([
          Method((b) => b
            ..body = const Code('')
            ..name = 'doThing'
            ..returns = refer('Thing', 'package:a/a.dart')),
          Method((b) => b
            ..body = const Code('')
            ..name = 'doOther'
            ..returns = refer('Other', 'package:b/b.dart')),
        ]));
    final emitter = DartEmitter(Allocator.simplePrefixing());

    ///
    ///
    ///
    print(DartFormatter().format('${library.accept(emitter)}'));
  });
}
