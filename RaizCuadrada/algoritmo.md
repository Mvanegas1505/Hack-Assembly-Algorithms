# Algoritmo de Raíz Cuadrada Entera - Hack Assembly

## Descripción General

Este programa implementa un algoritmo de **búsqueda binaria** para calcular la parte entera de la raíz cuadrada de un número en Hack Assembly del curso Nand2Tetris.

### Entrada y Salida
- **Entrada**: Número N almacenado en `M[18]`
- **Salida**: Raíz cuadrada entera de N almacenada en `M[19]`

---

## Mapa de Memoria

### Registros Principales
| Dirección | Variable | Propósito |
|-----------|----------|-----------|
| `M[18]` | `N` | Número de entrada|
| `M[19]` | `resultado` | Raíz cuadrada entera de N |

### Variables Temporales del Algoritmo Principal
| Dirección | Variable | Propósito |
|-----------|----------|-----------|
| `M[0]` | `n` | Copia local de N para cálculos |
| `M[1]` | `lo` | Límite inferior de búsqueda binaria |
| `M[2]` | `hi` | Límite superior de búsqueda binaria |
| `M[3]` | `ans` | Mejor aproximación encontrada hasta el momento |
| `M[4]` | `mid` | Punto medio actual en la búsqueda |
| `M[5]` | `divisor` | Divisor para calcular mid (siempre = 2) |
| `M[6]` | `cociente` | Resultado de la división (lo + hi) / 2 |

### Variables Temporales de Operaciones Auxiliares
| Dirección | Variable | Propósito |
|-----------|----------|-----------|
| `M[7]` | `dividendo` | Variable temporal para división |
| `M[8]` | `factor` | Contador para multiplicación |
| `M[9]` | `res` | Resultado de mid × mid |

---

## Algoritmo Paso a Paso

### 1. Inicialización
```assembly
// Crear copia local del número
@18
D=M      // D = N
@0
M=D      // n = N

// Establecer rango inicial de búsqueda
@1
M=0      // lo = 0

@0
D=M      // D = n
@2
M=D      // hi = n

@3
M=0      // ans = 0
```

### 2. Bucle Principal de Búsqueda Binaria
El algoritmo utiliza el patrón clásico de búsqueda binaria:

```assembly
(WHILE)
@1
D=M      // D = lo
@2
D=D-M    // D = lo - hi
@END_WHILE
D;JGT    // Si lo > hi, terminar
```

**Condición**: Mientras `lo ≤ hi`

### 3. Cálculo del Punto Medio
```assembly
// mid = (lo + hi) / 2
@1
D=M      // D = lo
@2
D=D+M    // D = lo + hi
@4
M=D      // Guardar suma temporalmente
```

#### División por 2 (Implementación Manual)
Como Hack Assembly no tiene división nativa, se implementa por restas sucesivas:

```assembly
(BUCLE_DIVISION)
@7
D=M      // D = dividendo
@5
D=D-M    // D = dividendo - 2
@FIN_DIVISION
D;JLT    // Si dividendo < 2, terminar
@7
M=D      // dividendo = dividendo - 2
@6
M=M+1    // cociente++
@BUCLE_DIVISION
0;JMP    // Repetir
```

### 4. Cálculo de mid²
Implementación de multiplicación por sumas sucesivas:

```assembly
(LOOP_MULT)
@8
D=M      // D = factor
@MULT_END
D;JEQ    // Si factor = 0, terminar
@9
D=M      // D = res
@4
D=D+M    // D = res + mid
@9
M=D      // res = res + mid
@8
M=M-1    // factor--
@LOOP_MULT
0;JMP    // Repetir
```

### 5. Decisión de Búsqueda Binaria

#### Comparación con N
```assembly
@9
D=M      // D = mid²
@0
D=D-M    // D = mid² - n
```

#### Tres casos posibles:

1. **mid² = n** (Raíz exacta):
```assembly
@EXACT_MATCH
D;JEQ    // Si mid² = n, encontramos la raíz exacta
```

2. **mid² < n** (mid es muy pequeño):
```assembly
@LESS_THAN
D;JLT    // Si mid² < n, mid podría ser la respuesta
// ans = mid, lo = mid + 1
@4
D=M      // D = mid
@3
M=D      // ans = mid
@4
D=M+1    // D = mid + 1
@1
M=D      // lo = mid + 1
```

3. **mid² > n** (mid es muy grande):
```assembly
// hi = mid - 1
@4
D=M-1    // D = mid - 1
@2
M=D      // hi = mid - 1
```

---

## Control de Flujo y Etiquetas

### Etiquetas Principales
- `(WHILE)`: Inicio del bucle de búsqueda binaria
- `(END_WHILE)`: Final del algoritmo principal
- `(FIN)`: Bucle infinito final

### Etiquetas de División
- `(BUCLE_DIVISION)`: Bucle para división por restas sucesivas
- `(FIN_DIVISION)`: Final de la división

### Etiquetas de Multiplicación
- `(LOOP_MULT)`: Bucle para multiplicación por sumas sucesivas
- `(MULT_END)`: Final de la multiplicación

### Etiquetas de Comparación
- `(EXACT_MATCH)`: Cuando mid² = n
- `(LESS_THAN)`: Cuando mid² < n

---

## Instrucciones de Salto (JMP)

### Saltos Condicionales
| Instrucción | Condición | Uso |
|-------------|-----------|-----|
| `D;JGT` | D > 0 | Terminar bucle cuando lo > hi |
| `D;JLT` | D < 0 | Terminar división/comparaciones |
| `D;JEQ` | D = 0 | Raíz exacta/terminar multiplicación |

### Saltos Incondicionales
| Instrucción | Propósito |
|-------------|-----------|
| `0;JMP` | Continuar bucles y regresar al inicio |

---

## Ejemplo de Ejecución

Para N = 25:

1. **Inicialización**: lo=0, hi=25, ans=0
2. **Iteración 1**: mid=12, mid²=144 > 25 → hi=11
3. **Iteración 2**: mid=5, mid²=25 = 25 → **¡Raíz exacta!**
4. **Resultado**: ans=5 se guarda en M[19]

Para N = 30:

1. **Inicialización**: lo=0, hi=30, ans=0
2. **Iteración 1**: mid=15, mid²=225 > 30 → hi=14
3. **Iteración 2**: mid=7, mid²=49 > 30 → hi=6
4. **Iteración 3**: mid=3, mid²=9 < 30 → ans=3, lo=4
5. **Iteración 4**: mid=5, mid²=25 < 30 → ans=5, lo=6
6. **Iteración 5**: mid=6, mid²=36 > 30 → hi=5
7. **Terminación**: lo > hi
8. **Resultado**: ans=5 se guarda en M[19]

---

## Limpieza de Memoria

Al final del programa, se limpian todas las variables temporales pero se preservan los registros importantes:

```assembly
// Limpiar variables temporales (NO tocar M[18] y M[19])
@0 hasta @9
M=0  // Limpiar cada variable temporal
```

**Preservados**: M[18] (entrada) y M[19] (resultado)

---

## Complejidad

- **Temporal**: O(log n × n) debido a la búsqueda binaria con operaciones O(n)
- **Espacial**: O(1) - uso fijo de 10 registros de memoria

---

## Características del Diseño

1. **No destructivo**: El valor original en M[18] se mantiene intacto
2. **Memoria organizada**: Variables claramente separadas por función
3. **Implementación completa**: División y multiplicación implementadas desde cero
4. **Búsqueda eficiente**: Algoritmo de búsqueda binaria para optimizar el rendimiento