Aquí tienen un resumen de nuestro trabajo, basado en los archivos `codigo.txt` y `iniciales.asm`:

### **Diseño Gráfico de las Iniciales: ¿Cómo las dibujamos? ¿Qué efectos usamos?**

*   **Método de Dibujo:** Dibujamos nuestras iniciales (P, M, J, S) de forma manual, **píxel por píxel**. En el archivo `iniciales.asm`, pueden ver cómo calculamos la dirección de memoria de cada píxel en la pantalla (`@SCREEN + offset`) y le asignamos un valor (`-1`) para encenderlo. Repetimos este proceso para cada punto que forma nuestras letras, fila por fila.

*   **Efectos Utilizados:** El principal efecto visual que implementamos fue el uso de **dos tipografías distintas para cada inicial**, una sobre la otra.
    *   La **primera tipografía** la dibujamos en la parte superior de la pantalla (filas 1-32).
    *   La **segunda tipografía** la posicionamos en la parte inferior (filas 49-80).
    Cada tipografía tiene un estilo y un patrón de píxeles único, creando así la impresión de dos diseños diferentes para la misma letra.

### **Dificultades Técnicas y Cómo las Superamos**

Durante el proyecto, enfrentamos varios desafíos técnicos que logramos superar:

1.  **Desafío: Traducir nuestros diseños visuales a código.**
    *   **Solución:** Para lograrlo, mapeamos manualmente cada píxel de nuestras iniciales a coordenadas de memoria específicas. El código en `iniciales.asm` es el resultado de este trabajo meticuloso, donde cada detalle de las letras corresponde a cálculos de direcciones de memoria.

2.  **Desafío: Gestionar la entrada del teclado de forma selectiva.**
    *   **Solución:** Implementamos un bucle (`BUCLE_TECLADO`) que monitorea constantemente el registro del teclado (`@KBD`). Dentro de este, filtramos las entradas para que nuestro programa solo reaccionara a las teclas de nuestras iniciales (P, M, J, S), ignorando cualquier otra.

3.  **Desafío: Evitar activaciones múltiples al mantener una tecla presionada.**
    *   **Solución:** Diseñamos el sistema para que esperara a que la tecla se soltara antes de procesar una nueva pulsación. Con esto, evitamos el "ruido" y las activaciones repetidas.

### **Aprendizajes Clave**

Este proyecto nos dejó importantes aprendizajes:

*   **Manipulación Directa de Memoria:** Aprendimos a controlar la pantalla a bajo nivel, dibujando gráficos mediante el acceso directo a la memoria de video.
*   **Programación en Ensamblador (Assembly):** Fortalecimos nuestro entendimiento práctico del lenguaje ensamblador para la arquitectura HACK, incluyendo el manejo de registros, memoria y saltos condicionales.
*   **Manejo de Periféricos:** Adquirimos experiencia en cómo interactuar con el hardware, en este caso, el teclado, leyendo y filtrando sus entradas para ejecutar acciones específicas.
*   **Metáfora Computacional:** Comprendimos mejor cómo un sistema procesa entradas de manera selectiva y aplicamos este concepto para que nuestro programa solo respondiera a los estímulos relevantes.