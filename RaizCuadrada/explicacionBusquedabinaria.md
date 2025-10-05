# 📐 Búsqueda Binaria para la Raíz Cuadrada Entera

## 🔎 ¿Qué es la búsqueda binaria?
La **búsqueda binaria** es un algoritmo que sirve para encontrar un valor dentro de un rango **dividiendo el problema por la mitad en cada paso**.  
En lugar de probar todos los números uno por uno, vamos descartando **la mitad del rango cada vez** → mucho más rápido.

---

## 📐 Aplicada a la raíz cuadrada
Queremos calcular la **parte entera de la raíz cuadrada de N**.  
La raíz de N está entre **0 y N**.  

Ejemplo: si N = 10, la raíz debe estar entre 0 y 10.

---

## 🔹 Algoritmo paso a paso

1. **Inicializar el rango**  
   - `lo = 0`  
   - `hi = N`  
   - `ans = 0` (respuesta provisional).  

2. **Mientras el rango no esté vacío (`lo <= hi`)**:  
   - Calculamos el **punto medio**:  
     ```
     mid = (lo + hi) / 2
     ```
   - Calculamos el **cuadrado** de ese punto medio:  
     ```
     sq = mid * mid
     ```

3. **Comparamos `sq` con `N`:**  
   - Si `sq == N` → encontramos la raíz exacta, `ans = mid`.  
   - Si `sq < N` → significa que `mid` es **demasiado pequeño**, pero puede ser la raíz entera.  
     Guardamos `ans = mid` y subimos el límite inferior:  
     ```
     lo = mid + 1
     ```
   - Si `sq > N` → significa que `mid` es **demasiado grande**, bajamos el límite superior:  
     ```
     hi = mid - 1
     ```

4. Cuando el rango se acaba (`lo > hi`), el último valor guardado en `ans` es la **parte entera de la raíz cuadrada**.

---

## 🔹 Ejemplo con N = 10

1. `lo = 0, hi = 10`  
   → `mid = 5`, `sq = 25 > 10` → bajamos `hi = 4`.  

2. `lo = 0, hi = 4`  
   → `mid = 2`, `sq = 4 < 10` → guardamos `ans = 2`, subimos `lo = 3`.  

3. `lo = 3, hi = 4`  
   → `mid = 3`, `sq = 9 < 10` → guardamos `ans = 3`, subimos `lo = 4`.  

4. `lo = 4, hi = 4`  
   → `mid = 4`, `sq = 16 > 10` → bajamos `hi = 3`.  

5. Ahora `lo = 4, hi = 3` → el ciclo termina.  

**✅ Resultado final: `ans = 3`.**

---

## ⚡ Ventajas
- Mucho más rápido que la resta de impares (usa **O(log N)** pasos en vez de **O(√N)**).  
- Fácil de implementar si ya tienes multiplicación.  
- Funciona para cualquier número positivo.  

## PSEUDOCODIGO 

'''python

// Entrada: N en R18
// Salida: sqrt(N) en R19

n = M[18]

lo = 0
hi = n
ans = 0

while (lo <= hi):
    mid = (lo + hi) / 2          // división entera por 2 (puedes implementar con shift o suma/resta)
    sq = mid * mid               // aquí usas tu rutina de multiplicación

    if (sq == n):
        ans = mid
        break
    else if (sq < n):
        ans = mid                // posible candidato
        lo = mid + 1
    else:
        hi = mid - 1

M[19] = ans
'''