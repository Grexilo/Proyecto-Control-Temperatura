float temp; // Variable para calcular la temperatura
int analogPin = A1; // pin analgico para hacer la lectura del sensor
int contador = 0; // contador para realizar el escalon y encender la bombilla


void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200); // Iniciar el puerto serial
}

void loop() {
  // put your main code here, to run repeatedly:
  while(!Serial){} // Bucle infinito hasta que se abra el puerto serial para observar datos

  //En este if se enciende la bombilla cuando han pasado 10 segundos de iniciar el programa
  if(contador >= 20){
    digitalWrite(6,1);
  }

  // Se realiza la lectura de tempertatura. El sensot LM35 retorna diferencias de tension 10mV por cada grado centigrado de variacion
  temp = (analogRead(analogPin)*500.0) / 1024;

  //mostramos la temperatura por el puerto serial para captar los datos
  Serial.println(temp);
  contador = contador + 1;

  //retardo de 0.5 segundos para reiniar el loop y tome un nuevo dato.
  delay(500);
}
