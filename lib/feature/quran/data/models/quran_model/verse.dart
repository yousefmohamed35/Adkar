class Verse {
  final int id;
  final String text;



  factory Verse.fromJson(Map<String, dynamic> json) =>
      Verse(id: json['id'], text: json['text']);

  Verse({required this.id, required this.text});

  Map<String, dynamic> toJson() => {'id': id, 'text': text};

  
}
