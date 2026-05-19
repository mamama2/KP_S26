/**
 * DMP B6 KP S26 - Termin5 Data und Text
 * DEMO JSON Web-Scrapping
 * 
 * This example demonstrates how to use loadJSONObject/Array()
 * to retrieve JSON data via URL
 */
// Declare fonts
PFont fontTemperature, fontLocation, fontInstructions;
PImage weatherIcon;
// We're going to store the temperature
int temperature = 0;
// We're going to store text about the weather
String weather = "";
String city = "";
String country ="";
String icon ="";
int max, min;
void setup() {
  size(350,350);
  // Set up fonts
  fontTemperature = createFont("Arial Black", 150);
  fontLocation = createFont("Arial Black", 36);
  fontInstructions = createFont("Arial Black", 16);
  //fill(255); // Font color
  // The URL for the JSON data (replace "imperial" with "metric" for celsius)
  String url = "https://api.openweathermap.org/data/2.5/weather?q=Bremerhaven&appid=a8c3b5d6abb539ffed0b79ceac68e9d7&units=metric";
//http://api.openweathermap.org/data/2.5/weather?q=New%20York&units=imperial
  // Load the XML document
  JSONObject json = loadJSONObject(url);

  // Get the temperature
  JSONObject main = json.getJSONObject("main");
  JSONObject sys = json.getJSONObject("sys");
 
  city = json.getString("name");
  // Grab the description, look how we can "chain" calls.
  weather = json.getJSONArray("weather").getJSONObject(0).getString("description");
    icon = json.getJSONArray("weather").getJSONObject(0).getString("icon");

  temperature = main.getInt("temp");
  max = main.getInt("temp_max");
  min = main.getInt("temp_min");
  country = sys.getString("country");

}

void draw() {
  background(255);
  //fill(0);

  // Display all the stuff we want to display
 /* text("City: " + city, 10, 50 );
  text (" - "+country, 123, 50);
  text("Current temperature: " + temperature, 10, 70);
  text("MAX: " +max, 10, 120);
  
  text("MIN: " +min, 10, 130);
  text("Forecast: " + weather, 10, 90);
  //text(" - " + json.getJSONArray("weather").getJSONObject(0).getString("main"),100, 90);
*/
 displayColor(); // Set the background color
  displayText(); // Display text
}


void displayColor() {
  // Set up the temperature range in Fahrenheit
  int minTemp = 0;
  int maxTemp =50;

  // Convert temperature to a 0-255 color value
  float temperatureColor = map(temperature, minTemp, maxTemp, 0, 255);    

  // Set background color using temperature on a blue to red scale     
  background(color(temperatureColor, 0, 255-temperatureColor));
}

void displayText() {
  // Set up text margins
  int margin = 35;
  int marginTopTemperature = 150;
  int marginTopLocation = 175;

  // Display temperature
  textFont(fontTemperature);
  text(temperature, margin, marginTopTemperature);

  // Display location
  textFont(fontLocation);
  text(city, margin, marginTopLocation, width-margin, height-margin);
   text(country, margin, marginTopLocation+40, width-margin, height-margin);
 

  // Display instructions
  textFont(fontInstructions);
    text("Forecast: " +weather, margin, marginTopLocation+80, width-margin, height-margin);
    
    weatherIcon = loadImage("http://openweathermap.org/img/w/" + icon + ".png");
image(weatherIcon, 150, 300);
  //text(instructions, margin, height-margin);
}
/* JSON Datei Beispiel aus Openweather.org
{
  "coord":{
    "lon":-74.01,
    "lat":40.71
  },
  "sys":{
    "message":0.2012,
    "country":"US",
    "sunrise":1406540974,
    "sunset":1406592927
  },
  "weather":[
    {
      "id":801,
      "main":"Clouds",
      "description":"few clouds",
      "icon":"02d"
    }
  ],
  "base":"cmc stations",
  "main":{
    "temp":73.45,
    "humidity":83,
    "pressure":999,
    "temp_min":70,
    "temp_max":75.99
  },
  "wind":{
    "speed":4.45,
    "gust":3.6,
    "deg":259
  },
  "rain":{
    "3h":0 
  },
  "clouds":{
    "all":24
  },
  "dt":1406559145,
  "id":5128581,
  "name":"New York",
  "cod":200
}
*/
