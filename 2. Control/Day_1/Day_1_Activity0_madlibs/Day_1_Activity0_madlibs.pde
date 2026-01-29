// Day 1 Activity - Mad Libs Generator
// Create a story using string variables and concatenation

// ============================================
// INSTRUCTIONS:
// 1. Fill in the string variables below with your own words
// 2. The program will combine them into a silly story
// 3. Try different words to create funny combinations!
// ============================================

// --- YOUR WORDS HERE ---
String adjective1 = "silly";       // describing word (e.g., "giant", "purple")
String adjective2 = "fluffy";      // another describing word
String noun1 = "elephant";         // person, place, or thing
String noun2 = "pizza";            // another noun
String verb1 = "dancing";          // action word ending in -ing
String verb2 = "jumping";          // another action word ending in -ing
String place = "the moon";         // a location
String exclamation = "Wow";        // something you shout

void setup() {
  size(500, 400);
  background(255, 250, 240);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255, 250, 240);

  // --- TITLE ---
  fill(100, 50, 150);
  textSize(28);
  text("Mad Libs Story", width/2, 40);

  // --- BUILD THE STORY ---
  // Concatenate strings to create sentences
  textSize(16);
  fill(0);

  String line1 = "Once upon a time, a " + adjective1 + " " + noun1;
  String line2 = "went " + verb1 + " to " + place + ".";
  String line3 = "There, it found a " + adjective2 + " " + noun2;
  String line4 = "that was " + verb2 + " everywhere!";
  String line5 = exclamation + "! What a strange day!";

  // --- DISPLAY THE STORY ---
  text(line1, width/2, 120);
  text(line2, width/2, 150);
  text(line3, width/2, 200);
  text(line4, width/2, 230);
  text(line5, width/2, 280);

  // --- CHALLENGE ---
  fill(100);
  textSize(12);
  text("Challenge: Add more variables and make the story longer!", width/2, 360);
}

// ============================================
// CHALLENGES:
// 1. Add more string variables (colors, names, numbers as strings)
// 2. Create a second story that uses the same variables
// 3. Add a title variable that changes the story title
// 4. Press keys to swap between different word sets
// ============================================
