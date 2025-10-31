class Questionnaire {
  final int progress;
  const Questionnaire(this.progress);

  factory Questionnaire.fromJson(final Map<String, dynamic> json) => Questionnaire(json['progress']);

  Map<String, dynamic> toJson() => {'progress' : progress};

}


