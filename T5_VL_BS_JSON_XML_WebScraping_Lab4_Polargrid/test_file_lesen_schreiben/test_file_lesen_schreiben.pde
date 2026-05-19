//KP S26 DMP - Beispiele aus der Vorlesung: Data und Text
//Dataeien lesen und schreiben

//String[]data = new String[1];
String[] data = loadStrings("meinenDaten.txt");
//data[0] = " Guess What Bob";
//saveStrings("meinenDaten.txt", data);
for (int i=0; i< data.length;i++){
println(">" +data[i]);
}
