import 'dart:convert';

import 'model.dart';
import 'util.dart';

///
/// ETH Contract Metadata
///
class EthContractMetaMapper {
  ContractMetaMap data;

  EthContractMetaMapper();

  void init() async {
    var jsonRaw = await parseJsonFile();

    data = ContractMetaMap.fromJson(json.decode(jsonRaw));
  }

  void get(key) {}
}
