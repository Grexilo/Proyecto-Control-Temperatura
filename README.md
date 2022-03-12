# Proyecto Control 2  - Control de Temperatura

## Autores
### - Juan José Mantilla Parra - 2172324
###  - Miguel Rodrigo Vargas Blanco - 2171521

### En este repositorio se encuentran los codigo usado para el control de Temperatura.

- En la sección [Toma Datos](https://github.com/Grexilo/Proyecto-Control-Temperatura/tree/main/Toma%20Datos), se encuentran los codigos para realizar la toma de datos un Arduino y ser captados por MATLAB. **Estos codigos solo toman datos, son usados para caracterizar la planta** 

- En la sección [control_P](https://github.com/Grexilo/Proyecto-Control-Temperatura/tree/main/control_P), se encuentra el codigo implementado en arduino para un **Controlador Proporcional**
- En la sección [control_PI](https://github.com/Grexilo/Proyecto-Control-Temperatura/tree/main/control_PI), se encuentra el codigo implementado en arduino para un **Controlador Proporcional Integral**
-En la sección [control_PID](https://github.com/Grexilo/Proyecto-Control-Temperatura/tree/main/control_PID), se encuentra el codigo implementado en arduino para un **Controlador Proporcional Integral Derivativo**

## **Importante** 

1. Para la visualización de los datos en tiempo real se debe ejecutar [graficar_Datos.m](https://github.com/Grexilo/Proyecto-Control-Temperatura/blob/main/grafiar_Datos.m)

2. **Tener en cuenta el puerto serial al momento de conectar arduino y hacer el cambio en los codigos de MATLAB**

3. Pines usados en Arduino:
  - Pin 6: Salida PWM al CH1 del Rele de estado solido
  - Pin A0: Vout del sensor LM35, para la lectura de la temperatura

