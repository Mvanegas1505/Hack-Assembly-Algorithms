# Hack Assembly Algorithms - Parcial 02 📚

Este repositorio contiene la implementación de dos algoritmos fundamentales en **Hack Assembly** desarrollados para el **Parcial 02 de Organización de Computadores** en el contexto del curso Nand2Tetris.

## 📋 Descripción General

El proyecto implementa dos algoritmos complejos utilizando únicamente las instrucciones básicas del lenguaje ensamblador Hack, demostrando cómo resolver problemas computacionales de nivel medio usando solo operaciones primitivas (suma, resta, comparación y saltos).

---

## 🔢 Algoritmo 1: Raíz Cuadrada Entera

### **Ubicación**: `RaizCuadrada/raizcuadrada.asm`

### **Objetivo**
Calcular la **parte entera** de la raíz cuadrada de un número dado, utilizando el algoritmo de **búsqueda binaria**.

### **Entrada y Salida**
- **Entrada**: Número en el registro `M[18]`
- **Salida**: Parte entera de √N en el registro `M[19]`

### **Algoritmo Utilizado: Búsqueda Binaria**
```
Entrada: N en M[18]
lo = 0, hi = N, ans = 0

while (lo <= hi):
    mid = (lo + hi) / 2
    sq = mid * mid
    
    if (sq == N): ans = mid, break
    else if (sq < N): ans = mid, lo = mid + 1  
    else: hi = mid - 1

Salida: M[19] = ans
```

### **Características Técnicas**
- ✅ **Complejidad**: O(log N) - altamente eficiente
- ✅ **Operaciones implementadas**: División entera por 2, multiplicación por sumas repetidas
- ✅ **Sin librerías**: Solo instrucciones básicas de Hack Assembly
- ✅ **Gestión de memoria**: Variables organizadas en registros específicos

### **Ejemplos de Funcionamiento**
| Entrada (M[18]) | Salida (M[19]) | Verificación |
|-----------------|----------------|--------------|
| 25              | 5              | 5² = 25 ✅    |
| 16              | 4              | 4² = 16 ✅    |
| 10              | 3              | 3² = 9 < 10 < 16 = 4² ✅ |
| 49              | 7              | 7² = 49 ✅    |

---

## 🎨 Algoritmo 2: Mostrar Iniciales en Pantalla

### **Ubicación**: `Iniciales/iniciales.asm`

### **Objetivo**
Mostrar las **iniciales del estudiante** en la pantalla del simulador Hack, dibujando caracteres pixel por pixel usando mapas de bits.

### **Funcionalidad**
- Renderiza las iniciales como gráficos bitmap en la memoria de pantalla
- Maneja la entrada del teclado para interactividad
- Implementa tipografías personalizadas definidas pixel por pixel

### **Características Técnicas**
- ✅ **Gráficos bitmap**: Manipulación directa de la memoria de pantalla (0x4000-0x5FFF)
- ✅ **Tipografía custom**: Cada letra definida como matriz de píxeles
- ✅ **Interactividad**: Responde a entrada del teclado
- ✅ **Control de flujo**: Gestión compleja de bucles y saltos

### **Estructura del Código**
- **Mapas de caracteres**: Definición pixel por pixel de cada letra
- **Rutinas de dibujo**: Funciones para renderizar en pantalla
- **Control de teclado**: Manejo de eventos de entrada
- **Bucle principal**: Ciclo de ejecución continuo

---

## 🛠️ Tecnologías y Herramientas

- **Lenguaje**: Hack Assembly Language (Nand2Tetris)
- **Simulador**: CPU Emulator del proyecto Nand2Tetris
- **Arquitectura**: Computadora Hack (16-bit)

## 📁 Estructura del Proyecto

```
📦 Hack-Assembly-Algorithms/
├── 📂 RaizCuadrada/
│   ├── 📄 raizcuadrada.asm          # Implementación principal
│   ├── 📄 algoritmo.md              # Documentación del algoritmo
│   └── 📄 explicacionBusquedabinaria.md  # Explicación detallada
├── 📂 Iniciales/
│   ├── 📄 iniciales.asm             # Implementación principal
│   └── 📄 tipografias.md            # Documentación de tipografías
└── 📄 README.md                     # Este archivo
```

## 🚀 Cómo Ejecutar

### **Requisitos**
1. Descargar el simulador Nand2Tetris desde [nand2tetris.org](https://www.nand2tetris.org/)
2. Tener instalado Java para ejecutar el CPU Emulator

### **Pasos de Ejecución**

#### **Para Raíz Cuadrada:**
1. Abrir `CPUEmulator.bat` del simulador Nand2Tetris
2. Cargar archivo: `File → Load Program → raizcuadrada.asm`
3. En la ventana RAM, configurar `M[18]` con el número deseado
4. Ejecutar: Presionar **Run** ▶️
5. Ver resultado en `M[19]`

#### **Para Iniciales:**
1. Abrir `CPUEmulator.bat` del simulador Nand2Tetris
2. Cargar archivo: `File → Load Program → iniciales.asm`
3. Activar vista de pantalla: `View → Screen`
4. Ejecutar: Presionar **Run** ▶️
5. Ver las iniciales renderizadas en pantalla

## 🎯 Objetivos Académicos

Este proyecto demuestra:

- **Traducción de algoritmos**: De pseudocódigo a instrucciones de máquina
- **Optimización de recursos**: Uso eficiente de memoria limitada
- **Programación de bajo nivel**: Sin abstracciones de alto nivel
- **Resolución de problemas**: Implementación de algoritmos complejos con herramientas básicas
- **Arquitectura de computadores**: Comprensión profunda del funcionamiento interno

## 👨‍💻 Autor

**Martín Vanegas**  
Estudiante de Ingeniería de Sistemas  
Curso: Organización de Computadores  
Institución: [Tu Universidad]

## 📊 Complejidad y Rendimiento

| Algoritmo | Complejidad Temporal | Complejidad Espacial | Operaciones Principales |
|-----------|---------------------|---------------------|------------------------|
| Raíz Cuadrada | O(log N) | O(1) | División, Multiplicación, Comparación |
| Iniciales | O(P) donde P = píxeles | O(C) donde C = caracteres | Escritura en memoria, Control de flujo |

## 🔍 Detalles Técnicos Destacados

### **Raíz Cuadrada**
- Implementación de **división entera** mediante restas sucesivas
- Implementación de **multiplicación** mediante sumas repetidas  
- Algoritmo de **búsqueda binaria** optimizado para arquitectura Hack
- Gestión cuidadosa de **casos límite** y **convergencia**

### **Iniciales**
- **Mapeo directo** de memoria de pantalla (512x256 píxeles)
- **Tipografías bitmap** definidas manualmente
- **Gestión de eventos** de teclado en tiempo real
- **Optimización de renderizado** para performance

---

## 🏆 Logros del Proyecto

✅ **Algoritmos funcionando correctamente**  
✅ **Código optimizado y documentado**  
✅ **Casos de prueba validados**  
✅ **Implementación puramente en Hack Assembly**  
✅ **Sin dependencias externas**  

---

*Este proyecto forma parte del aprendizaje práctico del curso "From Nand to Tetris" y demuestra la construcción de software complejo desde los componentes más básicos de una computadora.*