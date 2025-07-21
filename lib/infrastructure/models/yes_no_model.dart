class YesNoModel {
  final String answer; // Assuming 'text' is the same as 'answer'
  final bool forced; // Assuming 'fromWho' is a string, adjust if it's
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced, // Adjust type if necessary
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) {
    return YesNoModel(
      answer: json['answer'] as String,
      image: json['image'] as String,
      forced:
          json['forced'] as bool? ?? false, // Default to false if not present
    );
  }
}
