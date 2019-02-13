
class Questions {
  final int id;
 final String question;
  final String correct_answer;
 final List<String> incorrect_answer;

Questions(
    {this.question, this.correct_answer, this.incorrect_answer, this.id}
    );
  factory Questions.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFromJson  = parsedJson['incorrect_answer'];
    List<String> streetsList = streetsFromJson.cast<String>();
    return new Questions(
        id : parsedJson['id'],
        question : parsedJson['question'],
        correct_answer: parsedJson['correct_answer'],
        incorrect_answer: streetsList
    );
  }
}
