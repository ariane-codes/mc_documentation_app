class PersonalData {
  const PersonalData(this.firstName, this.lastName, this.age, this.education,
      this.status, this.occupation, this.location);
  final String firstName;
  final String lastName;
  final int age;
  final String education;
  final String status;
  final String occupation;
  final String location;
}

class UserPersona {
  UserPersona(this.personalData, this.personalityAdjectives, this.quote,
      this.briefStory, this.goals, this.frustrations);
  final PersonalData personalData;
  final List<String> personalityAdjectives;
  final String quote;
  final String briefStory;
  final List<String> goals;
  final List<String> frustrations;
}

List<UserPersona> userPersonas = [
  UserPersona(
      const PersonalData("Arlene", "McCoy", 22, "Management", "Single",
          "Barista", "Oxford, UK"),
      ["amicable", "calm", "outgoing", "neat", "practical"],
      "I love trying out new places to eat - if they're good, awesome; if they're not, I know not to come back.",
      "Arlene studies Management at university and works part-time as a barista. She enjoys spending time with friends on weekends, especially going to food trucks and affordable restaurants. She shares what she eats on her Instagram and Tiktok. Occassionally, she gets takeout with her family as well. Friends and family sometimes ask her what places would be good to eat, so she's started making notes on her phone whenever she orders something she likes.",
      [
        "Track the restaurants she visits.",
        "Take pictures + notes of the places she's eaten at.",
        "Share her recommendations."
      ],
      [
        "Existing apps don't seem oriented to the young.",
        "She doesn't care about booking a table.",
        "Wants to review dishes, not just the whole restaurant."
      ])
];
