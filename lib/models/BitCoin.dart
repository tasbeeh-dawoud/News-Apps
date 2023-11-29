class BitCoin {
  String? code;
  Data? data;

  BitCoin({this.code, this.data});

  BitCoin.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? time;
  String? symbol;
  String? buy;
  String? sell;
  String? changeRate;
  String? changePrice;
  String? high;
  String? low;
  String? vol;
  String? volValue;
  String? last;
  String? averagePrice;
  String? takerFeeRate;
  String? makerFeeRate;
  String? takerCoefficient;
  String? makerCoefficient;

  Data(
      {this.time,
        this.symbol,
        this.buy,
        this.sell,
        this.changeRate,
        this.changePrice,
        this.high,
        this.low,
        this.vol,
        this.volValue,
        this.last,
        this.averagePrice,
        this.takerFeeRate,
        this.makerFeeRate,
        this.takerCoefficient,
        this.makerCoefficient});

  Data.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    symbol = json['symbol'];
    buy = json['buy'];
    sell = json['sell'];
    changeRate = json['changeRate'];
    changePrice = json['changePrice'];
    high = json['high'];
    low = json['low'];
    vol = json['vol'];
    volValue = json['volValue'];
    last = json['last'];
    averagePrice = json['averagePrice'];
    takerFeeRate = json['takerFeeRate'];
    makerFeeRate = json['makerFeeRate'];
    takerCoefficient = json['takerCoefficient'];
    makerCoefficient = json['makerCoefficient'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['symbol'] = this.symbol;
    data['buy'] = this.buy;
    data['sell'] = this.sell;
    data['changeRate'] = this.changeRate;
    data['changePrice'] = this.changePrice;
    data['high'] = this.high;
    data['low'] = this.low;
    data['vol'] = this.vol;
    data['volValue'] = this.volValue;
    data['last'] = this.last;
    data['averagePrice'] = this.averagePrice;
    data['takerFeeRate'] = this.takerFeeRate;
    data['makerFeeRate'] = this.makerFeeRate;
    data['takerCoefficient'] = this.takerCoefficient;
    data['makerCoefficient'] = this.makerCoefficient;
    return data;
  }
}
