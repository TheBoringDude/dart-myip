/// ClientIP is the schema output from the api.
class ClientIP {
  String ip;
  ClientIPGeo geo;
  int asn;
  String country;
  String city;
  String continent;
  String postalCode;
  String region;
  String regionCode;
  String timezone;

  ClientIP(
      {required this.ip,
      required this.geo,
      required this.asn,
      required this.country,
      required this.city,
      required this.continent,
      required this.postalCode,
      required this.region,
      required this.regionCode,
      required this.timezone});

  factory ClientIP.fromJson(Map<String, dynamic> json) {
    return ClientIP(
        ip: json['ip'],
        geo: ClientIPGeo(latitude: json['geo']['latitude'], longitude: json['geo']['longitude']),
        asn: json['asn'],
        country: json['country'],
        city: json['city'],
        continent: json['continent'],
        postalCode: json['postalCode'],
        region: json['region'],
        regionCode: json['regionCode'],
        timezone: json['timezone']);
  }
}

class ClientIPGeo {
  String latitude;
  String longitude;

  ClientIPGeo({required this.latitude, required this.longitude});
}
