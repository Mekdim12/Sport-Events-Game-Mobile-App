class AmazingFacts {
  final String fact;
  final int id;


  AmazingFacts({required this.fact, required this.id});
 
factory AmazingFacts.fromJson(Map<String, dynamic> json) {
    return AmazingFacts(
      fact: json['fact'],
      id: json['id'],
    );
  
}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fact'] = this.fact;
    data['id'] = this.id;
    return data;
  }
  static List<AmazingFacts> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => AmazingFacts.fromJson(json)).toList();
  }

}