import 'verse.dart';

class QuranModel {
  final int id;
  final String name;
  final String transliteration;
  final String type;
  final int totalVerses;
  final List<Verse> verses;

 
  factory QuranModel.fromJson(Map<String, dynamic> json) => QuranModel(
    id: json['id'] ,
    name: json['name'],
    transliteration: json['transliteration'] ,
    type: json['type'] ,
    totalVerses: json['total_verses'] ,
    verses:
        (json['verses'] )
            ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
            .toList(),
  );

  QuranModel({required this.id, required this.name, required this.transliteration, required this.type, required this.totalVerses, required this.verses});

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'transliteration': transliteration,
    'type': type,
    'total_verses': totalVerses,
    'verses': verses.map((e) => e.toJson()).toList(),
  };

 
}
