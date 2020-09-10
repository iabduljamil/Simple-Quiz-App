import 'questions.dart';

class QuestionsList {
  List<Questions> questData = [
    Questions(
        question: "What's the full form of OOP",
        answer1: "Object Oriented Programming",
        answer2: "Orient Object Product",
        answer3: "Object Orient Part"),
    Questions(
        question: "What's full form of PaaS?",
        answer1: "Platform as a Service",
        answer2: "Platform as a Software",
        answer3: "Product as a Service"),
    Questions(
        question: "What's full form of SaaS?",
        answer1: "Software as a Service",
        answer2: "Software as System",
        answer3: "System as a Service"),
    Questions(
        question: "What's full form of IaaS?",
        answer1: "Infrastructure as a Service",
        answer2: "Infrastructure as a Software",
        
        answer3: "Information as a Service"),
  ];

  

  String getQuest(int numb) {
    return questData[numb].question;
  }

  String getAns1(int numb) {
    return questData[numb].answer1;
  }

  String getAns2(int numb) {
    return questData[numb].answer2;
  }


  String getAns3(int numb) {
    return questData[numb].answer3;
  }
}
