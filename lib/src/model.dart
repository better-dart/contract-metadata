///
/// Map:
///
class ContractMetaMap {
  Map data = <String, ContractMeta>{};

  ContractMetaMap({this.data});

  ///
  ///
  ///
  factory ContractMetaMap.fromJson(Map<String, dynamic> json) {
    return ContractMetaMap(
      data: json,
    );
  }

  Map<String, dynamic> toJson() {
    return data;
  }
}

///
/// eth contract metadata:
///
class ContractMeta {
  String address;
  String name;
  String symbol;

  // 图片
  String logo;

  // 是否是 ERC20 合约协议
  bool erc20;
  bool erc721;

  //
  int decimals;

  ContractMeta({
    this.address,
    this.name,
    this.symbol,
    this.logo,
    this.erc20,
    this.erc721,
    this.decimals,
  });

  factory ContractMeta.fromJson(Map<String, dynamic> json) {
    return ContractMeta(
      address: json["address"],
      name: json["name"],
      symbol: json["symbol"],
      logo: json["logo"],
      erc20: json["erc20"].toLowerCase() == 'true',
      erc721: json["erc721"].toLowerCase() == 'true',
      decimals: int.parse(json["decimals"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "address": this.address,
      "name": this.name,
      "symbol": this.symbol,
      "logo": this.logo,
      "erc20": this.erc20,
      "erc721": this.erc721,
      "decimals": this.decimals,
    };
  }
}
