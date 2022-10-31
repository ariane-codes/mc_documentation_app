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
      this.briefStory, this.goals, this.frustrations, this.useCase);
  final PersonalData personalData;
  final List<String> personalityAdjectives;
  final String quote;
  final String briefStory;
  final List<String> goals;
  final List<String> frustrations;
  final String useCase;
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
      ],
      "Arlene was out at the park with some friends. They get hungry, so she opens RestorApp. She sees that some friends of her have visited a nearby food truck and they've really liked it. She checks the exact location and visits it. \n\nOnce there, she orders her favourite food and uploads pictures to the app. She reviews individual dishes and even the drinks. She can even share with her friends where she is, given that the app has access to her location. \n\nLater on, when she wants to tell her family about the great burrito she had, she pulls out her phone and can show them the exact order she made and how the dishes were called - in case they want to enjoy them too."),
  UserPersona(
      const PersonalData("Jerome", "Bell", 29, "Design", "In a relationship",
          "Graphic Designer", "Dublin, Ireland"),
      ["reliable", "homebody", "sophisticated", "curious"],
      "I love trying out dishes from around the world, and talking about them with my colleagues.",
      "Jerome is fairly content with the life he’s got and is a food enthusiast. He works in graphic design for a multinational company with plenty of colleagues from around the world, so his curiosity is stimulated by the different cuisines they usually talk about. He enjoys going out to restaurants as much as he loves a good take out, and is a frequent user of delivery apps.",
      [
        "Explore more international cuisines and learn more about them.",
        "Have a way sophisticated way to log and share his experiences."
      ],
      [
        "When he looks for restaurant reviews online, he finds them spammy and unreliable.",
        "When he tries to order at a restaurant of a cuisine he’s not familiar with, he doesn’t know what to order."
      ],
      "A lot of Jerome’s colleagues are from Latin America, and he really wants to try more Latin American food - so he asked them for restaurant or takeout suggestions in the city. All of them were really enthusiastic and they added each other on RestorApp. \n\nNow, he can see which restaurants his friends are raving about, and not only that; he can order with confidence, because he can see their favourite dishes (with pictures attached!) and drinks.")
];
