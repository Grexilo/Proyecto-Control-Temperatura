float temp; // Variable para calcular la temperatura
int analogPin = A1; // pin analgico para hacer la lectura del sensor
int reference; // Temperatura de referencia
float error;
int digitalPin = 6;
float e1,u1 = 0; // Registros de memoria e1  = e[n-1], u1 = u[n-1]


void setup() {
  Serial.begin(115200); // Iniciar el puerto serialz
  reference = 100;
  delay(5000);
}

void loop() {

  while(!Serial){} // Bucle infinito hasta que se abra el puerto serial para observar datos
  
  // Se realiza la lectura de tempertatura. El sensot LM35 retorna diferencias de tension 10mV por cada grado centigrado de variacion
  temp = (analogRead(analogPin)*500.0) / 1024;

  error = reference - temp;
  float accionControl = constrain(5*error - 0.6e1 + u1,0,255);
  analogWrite(digitalPin,accionControl);
  
  //mostramos la temperatura por el puerto serial para captar los datos
  Serial.print(temp);
  Serial.print(",");
  Serial.print(error);
  Serial.print(",");
  Serial.println(accionControl);


  e1 = error;
  u1 = accionControl;
  
  //retardo de 0.5 segundos, para tener frecuencia 
  delay(500);
  
}
