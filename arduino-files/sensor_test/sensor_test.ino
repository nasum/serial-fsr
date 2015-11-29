const int vol_pin_0 = 0;
const int vol_pin_1 = 1;

void setup() {
   Serial.begin( 9600 );
}

void loop() {
  int vol_value_0 = analogRead( vol_pin_0 );
  int vol_value_1 = analogRead( vol_pin_1 );
  Serial.print(vol_value_0);
  Serial.print(",");
  Serial.println(vol_value_1); 

  delay( 50 );
}
