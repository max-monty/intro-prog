// Fish Demo - Variables and Movement
// Demonstrating: mouseX, mouseY, width, height, frameRate

// --- CUSTOM VARIABLES ---
float fishX;      // Fish's x position
float fishY;      // Fish's y position
float speed = 2;  // How fast the fish moves

void setup() {
  size(600, 600);
  
  // Initialize fish position using built-in variables
  fishX = width / 2;   // Start in center horizontally
  fishY = height / 2;  // Start in center vertically
}

void draw() {
  background(170, 220, 240);
  
  //// === OPTION 1: Fish follows mouse ===
  //// The fish moves with the mouse
  //fishX = mouseX ;
  //fishY = mouseY;
  
   //=== OPTION 2: Fish moves on its own and wraps ===
   //(Comment out Option 1 and uncomment these lines to try)
   fishX = fishX - speed;      // Move left
   if (fishX < -75) {          // If fish goes off left edge
     fishX = width + 100;       // Wrap to right side
   }
  
  // --- DRAW THE FISH using variables ---
  // --- TAIL FIN ---
  fill(180, 70, 70);
  noStroke();
  triangle(fishX + 100, fishY - 30,       
           fishX + 50, fishY - 30,       
           fishX + 50, fishY + 30);      
           
  triangle(fishX + 100, fishY + 30,       
           fishX + 50, fishY - 30,       
           fishX + 50, fishY + 30);      
  
  // --- FISH BODY ---
  fill(200, 100, 100);
  stroke(150, 70, 70);
  strokeWeight(2);
  ellipse(fishX, fishY, 150, 80);
  
  // --- SIDE FIN ---
  fill(180, 70, 70);
  noStroke();
  triangle(fishX, fishY + 40,       
           fishX - 20, fishY + 10,       
           fishX + 20, fishY + 10);      
  
  // --- EYE ---
  fill(255);
  stroke(0);
  strokeWeight(1);
  ellipse(fishX - 40, fishY - 5, 25, 25);  
  
  fill(0);
  noStroke();
  ellipse(fishX - 45, fishY - 5, 10, 10);
  
  // --- DISPLAY BUILT-IN VARIABLES ---
  displayInfo();
}



// Function to display variable information
void displayInfo() {
  fill(0);
  textSize(12);
  textAlign(LEFT);
  
  // Show built-in variables
  text("mouseX: " + mouseX, 10, 20);
  text("mouseY: " + mouseY, 10, 35);
  text("width: " + width, 10, 50);
  text("height: " + height, 10, 65);
  text("frameRate: " + int(frameRate), 10, 80);
  
  // Show our custom variables
  text("fishX: " + int(fishX), 10, 100);
  text("fishY: " + int(fishY), 10, 115);
}
